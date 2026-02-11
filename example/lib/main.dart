// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:example/app_flow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Enable logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });
  final DriverConfig config = await _loadConfig();
  final YdbDriver driver = YdbDriver(config);
  runApp(AppFlow(driver: driver));
}

Future<DriverConfig> _loadConfig() async {
  // Load Service Account credentials from assets
  final String jsonString = await rootBundle.loadString('assets/sa-key.json');
  final Map<String, dynamic> saData =
      jsonDecode(jsonString) as Map<String, dynamic>;

  final String serviceAccountId = saData['service_account_id'] as String;
  final String keyId = saData['id'] as String;

  // Parse private key properly
  String rawKey = saData['private_key'] as String;

  // Remove any existing whitespace and newlines
  rawKey = rawKey.replaceAll(RegExp(r'\s+'), '');

  // Extract the base64 content between headers
  final beginMarker = '-----BEGINPRIVATEKEY-----';
  final endMarker = '-----ENDPRIVATEKEY-----';

  final startIdx = rawKey.indexOf(beginMarker);
  final endIdx = rawKey.indexOf(endMarker);

  if (startIdx == -1 || endIdx == -1) {
    throw FormatException('Invalid PEM format: missing BEGIN or END markers');
  }

  final base64Content = rawKey.substring(startIdx + beginMarker.length, endIdx);

  // Reconstruct proper PEM format with 64 chars per line
  final buffer = StringBuffer('-----BEGIN PRIVATE KEY-----\n');
  for (int i = 0; i < base64Content.length; i += 64) {
    final end = (i + 64 < base64Content.length) ? i + 64 : base64Content.length;
    buffer.write(base64Content.substring(i, end));
    buffer.write('\n');
  }
  buffer.write('-----END PRIVATE KEY-----');

  final privateKey = buffer.toString();

  final signer = RsaJwtSigner.fromPem(privateKey, keyId: keyId);

  // Создаем HTTP client для IAM API
  final iamClient = IamHttpClient(baseUrl: 'https://iam.api.cloud.yandex.net');

  return DriverConfig(
    endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
    database: '/ru-central1/b1...',
    credentials: YdbAuth.serviceAccount(
      serviceAccountId: serviceAccountId,
      signer: signer,
      transport: iamClient,
    ),
  );
}
