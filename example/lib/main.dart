// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

void main() {
  // Enable logging
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<DriverConfig>(
      future: _loadConfig(),
      builder: (BuildContext context, AsyncSnapshot<DriverConfig> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height: 16),
                    Text('Loading configuration...'),
                  ],
                ),
              ),
            ),
          );
        }

        if (snapshot.hasError) {
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Icon(Icons.error, color: Colors.red, size: 48),
                      const SizedBox(height: 16),
                      const Text(
                        'Failed to load configuration',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        snapshot.error.toString(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        }

        final DriverConfig config = snapshot.data!;
        final YdbDriver driver = YdbDriver(config);

        return MaterialApp(
          title: 'YDB Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: YdbConnectionWidget(
            driver: driver,
            builder:
                (
                  BuildContext context,
                  YdbConnectionState state,
                  Object? error,
                ) {
                  if (state == YdbConnectionState.connected) {
                    return const ContactListPage();
                  } else if (state == YdbConnectionState.error) {
                    return Scaffold(
                      body: YdbErrorWidget(
                        error: error!,
                        message: 'Failed to connect to YDB',
                        showStackTrace: true,
                      ),
                    );
                  }
                  return const Scaffold(
                    body: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(),
                          SizedBox(height: 16),
                          Text('Connecting to YDB...'),
                        ],
                      ),
                    ),
                  );
                },
          ),
        );
      },
    );
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

    final base64Content = rawKey.substring(
      startIdx + beginMarker.length,
      endIdx,
    );

    // Reconstruct proper PEM format with 64 chars per line
    final buffer = StringBuffer('-----BEGIN PRIVATE KEY-----\n');
    for (int i = 0; i < base64Content.length; i += 64) {
      final end = (i + 64 < base64Content.length)
          ? i + 64
          : base64Content.length;
      buffer.write(base64Content.substring(i, end));
      buffer.write('\n');
    }
    buffer.write('-----END PRIVATE KEY-----');

    final privateKey = buffer.toString();

    final signer = RsaJwtSigner.fromPem(privateKey, keyId: keyId);

    // Создаем HTTP client для IAM API
    final iamClient = IamHttpClient(
      baseUrl: 'https://iam.api.cloud.yandex.net',
    );

    return DriverConfig(
      endpoint: 'grpcs://ydb.serverless.yandexcloud.net:2135',
      database: '/ru-central1/b1.....',
      credentials: YdbAuth.serviceAccount(
        serviceAccountId: serviceAccountId,
        signer: signer,
        transport: iamClient,
      ),
    );
  }
}

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  bool _tableInitialized = false;

  @override
  void initState() {
    super.initState();
    _initializeTable();
  }

  Future<void> _initializeTable() async {
    // Note: In production, check if table exists first
    setState(() {
      _tableInitialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_tableInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('YDB Contacts'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {}); // Trigger rebuild to refresh query
            },
          ),
        ],
      ),
      body: YdbQueryBuilder<Contact>(
        driver: context
            .findAncestorWidgetOfExactType<YdbConnectionWidget>()!
            .driver,
        query: 'SELECT * FROM contacts ORDER BY id',
        mapper: Contact.fromRow,
        builder: (BuildContext context, AsyncSnapshot<List<Contact>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return YdbErrorWidget(
              error: snapshot.error!,
              stackTrace: snapshot.stackTrace,
              message: 'Failed to load contacts',
              showStackTrace: true,
              onRetry: () {
                setState(() {}); // Trigger refresh
              },
            );
          }

          final List<Contact> contacts = snapshot.data ?? <Contact>[];

          if (contacts.isEmpty) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.contacts_outlined, size: 64, color: Colors.grey),
                  SizedBox(height: 16),
                  Text('No contacts found'),
                  SizedBox(height: 8),
                  Text(
                    'Tap + to add a contact',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, int index) {
              final Contact contact = contacts[index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(contact.userName[0].toUpperCase()),
                ),
                title: Text(contact.userName),
                subtitle: Text(
                  '${contact.contactValue} (Ch: ${contact.channelId})',
                ),
                trailing: contact.isActive
                    ? const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 20,
                      )
                    : const Icon(Icons.cancel, color: Colors.grey, size: 20),
                onTap: () {
                  _showContactDetails(context, contact);
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddContactDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showContactDetails(BuildContext context, Contact contact) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(contact.userName),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('ID: ${contact.id}'),
              Text('Channel ID: ${contact.channelId}'),
              Text('Contact: ${contact.contactValue}'),
              Text('Active: ${contact.isActive ? "Yes" : "No"}'),
              Text('Created: ${contact.createdAt}'),
              Text('Updated: ${contact.updatedAt}'),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () async {
                Navigator.of(context).pop();
                await _deleteContact(context, contact.id);
              },
              child: const Text('Delete', style: TextStyle(color: Colors.red)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void _showAddContactDialog(BuildContext context) {
    // Get driver before showing dialog
    final YdbDriver driver = context
        .findAncestorWidgetOfExactType<YdbConnectionWidget>()!
        .driver;

    final TextEditingController userNameController = TextEditingController();
    final TextEditingController channelIdController = TextEditingController();
    final TextEditingController contactValueController =
        TextEditingController();
    bool isActive = true;

    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter setState) {
            return AlertDialog(
              title: const Text('Add Contact'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: userNameController,
                    decoration: const InputDecoration(labelText: 'User Name'),
                  ),
                  TextField(
                    controller: channelIdController,
                    decoration: const InputDecoration(labelText: 'Channel ID'),
                    keyboardType: TextInputType.number,
                  ),
                  TextField(
                    controller: contactValueController,
                    decoration: const InputDecoration(
                      labelText: 'Contact Value',
                    ),
                  ),
                  CheckboxListTile(
                    title: const Text('Active'),
                    value: isActive,
                    onChanged: (bool? value) {
                      setState(() {
                        isActive = value ?? true;
                      });
                    },
                  ),
                ],
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () async {
                    // Validate required fields
                    if (userNameController.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('User Name is required')),
                      );
                      return;
                    }
                    if (contactValueController.text.trim().isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Contact Value is required'),
                        ),
                      );
                      return;
                    }

                    final BuildContext dialogContext = context;
                    await _addContact(
                      dialogContext,
                      driver,
                      userNameController.text,
                      int.tryParse(channelIdController.text) ?? 0,
                      contactValueController.text,
                      isActive,
                    );
                  },
                  child: const Text('Add'),
                ),
              ],
            );
          },
        );
      },
    );
  }

  Future<void> _addContact(
    BuildContext context,
    YdbDriver driver,
    String userName,
    int channelId,
    String contactValue,
    bool isActive,
  ) async {
    try {
      // Generate a simple ID (in production, use proper ID generation)
      final int id = DateTime.now().millisecondsSinceEpoch;
      final DateTime now = DateTime.now();

      await driver.queryClient.execute(
        'INSERT INTO contacts (id, user_name, channel_id, contact_value, is_active, created_at, updated_at) '
        'VALUES (\$id, \$user_name, \$channel_id, \$contact_value, \$is_active, \$created_at, \$updated_at)',
        parameters: <String, IYdbValue>{
          '\$id': YdbUint64(id),
          '\$user_name': YdbUtf8(userName),
          '\$channel_id': YdbUint64(channelId),
          '\$contact_value': YdbUtf8(contactValue),
          '\$is_active': YdbBool(isActive),
          '\$created_at': YdbTimestamp(now),
          '\$updated_at': YdbTimestamp(now),
        },
      );

      if (context.mounted) {
        Navigator.of(context).pop(); // Close dialog
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Contact added successfully')),
        );
        setState(() {}); // Refresh the list
      }
    } catch (e) {
      if (context.mounted) {
        Navigator.of(context).pop(); // Close dialog on error too
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error adding contact: $e')));
      }
    }
  }

  Future<void> _deleteContact(BuildContext context, int id) async {
    try {
      final YdbDriver driver = context
          .findAncestorWidgetOfExactType<YdbConnectionWidget>()!
          .driver;

      await driver.queryClient.execute(
        'DELETE FROM contacts WHERE id = \$id',
        parameters: <String, IYdbValue>{'\$id': YdbUint64(id)},
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Contact deleted successfully')),
        );
        setState(() {}); // Refresh the list
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error deleting contact: $e')));
      }
    }
  }
}

/// Contact model class
class Contact {
  final int id;
  final String userName;
  final int channelId;
  final String contactValue;
  final bool isActive;
  final DateTime createdAt;
  final DateTime updatedAt;

  Contact({
    required this.id,
    required this.userName,
    required this.channelId,
    required this.contactValue,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  static Contact fromRow(Map<String, IYdbValue> row) {
    return Contact(
      id: row.getUint('id') ?? 0,
      userName: row.getString('user_name') ?? '',
      channelId: row.getUint('channel_id') ?? 0,
      contactValue: row.getString('contact_value') ?? '',
      isActive: row.getBool('is_active') ?? false,
      createdAt: row.getTimestamp('created_at') ?? DateTime.now(),
      updatedAt: row.getTimestamp('updated_at') ?? DateTime.now(),
    );
  }
}
