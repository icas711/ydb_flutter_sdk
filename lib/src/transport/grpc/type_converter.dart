/// Type converter between SDK types and protobuf types.
///
/// Provides bidirectional conversion between [IYdbValue] and protobuf
/// [TypedValue] for use with gRPC transport.
library;

import 'package:fixnum/fixnum.dart' as fixnum;

import '../../generated/ydb_value.pb.dart' as pb;
import '../../types/types.dart';

/// Converts between SDK types and protobuf types.
class YdbTypeConverter {
  /// Converts SDK [IYdbValue] to protobuf [TypedValue].
  static pb.TypedValue toProto(IYdbValue value) {
    return pb.TypedValue()
      ..type = _valueTypeToProto(value)
      ..value = _valueToProto(value);
  }

  /// Converts protobuf [TypedValue] to SDK [IYdbValue].
  static IYdbValue fromProto(pb.TypedValue typed) {
    return _protoToValue(typed.type, typed.value);
  }

  // === Type Conversion (SDK → Proto) ===

  static pb.Type _valueTypeToProto(IYdbValue value) {
    final pb.Type type = pb.Type();

    if (value is YdbInt8) {
      type.typeId = pb.Type_PrimitiveTypeId.INT8;
    } else if (value is YdbInt16) {
      type.typeId = pb.Type_PrimitiveTypeId.INT16;
    } else if (value is YdbInt32) {
      type.typeId = pb.Type_PrimitiveTypeId.INT32;
    } else if (value is YdbInt64) {
      type.typeId = pb.Type_PrimitiveTypeId.INT64;
    } else if (value is YdbUint8) {
      type.typeId = pb.Type_PrimitiveTypeId.UINT8;
    } else if (value is YdbUint16) {
      type.typeId = pb.Type_PrimitiveTypeId.UINT16;
    } else if (value is YdbUint32) {
      type.typeId = pb.Type_PrimitiveTypeId.UINT32;
    } else if (value is YdbUint64) {
      type.typeId = pb.Type_PrimitiveTypeId.UINT64;
    } else if (value is YdbFloat) {
      type.typeId = pb.Type_PrimitiveTypeId.FLOAT;
    } else if (value is YdbDouble) {
      type.typeId = pb.Type_PrimitiveTypeId.DOUBLE;
    } else if (value is YdbBool) {
      type.typeId = pb.Type_PrimitiveTypeId.BOOL;
    } else if (value is YdbString) {
      type.typeId = pb.Type_PrimitiveTypeId.STRING;
    } else if (value is YdbUtf8) {
      type.typeId = pb.Type_PrimitiveTypeId.UTF8;
    } else if (value is YdbBytes) {
      type.typeId = pb.Type_PrimitiveTypeId.YSON;
    } else if (value is YdbDate) {
      type.typeId = pb.Type_PrimitiveTypeId.DATE;
    } else if (value is YdbDatetime) {
      type.typeId = pb.Type_PrimitiveTypeId.DATETIME;
    } else if (value is YdbTimestamp) {
      type.typeId = pb.Type_PrimitiveTypeId.TIMESTAMP;
    } else if (value is YdbInterval) {
      type.typeId = pb.Type_PrimitiveTypeId.INTERVAL;
    } else if (value is YdbDecimal) {
      type.decimalType = pb.DecimalType()
        ..precision = 22
        ..scale = 9;
    } else if (value is YdbUuid) {
      type.typeId = pb.Type_PrimitiveTypeId.UUID;
    } else if (value is YdbJson) {
      type.typeId = pb.Type_PrimitiveTypeId.JSON;
    } else if (value is YdbJsonDocument) {
      type.typeId = pb.Type_PrimitiveTypeId.JSON_DOCUMENT;
    } else if (value is YdbOptional) {
      final pb.Type innerType;
      if (value.value != null) {
        innerType = _valueTypeToProto(value.value!);
      } else {
        innerType = pb.Type()..typeId = pb.Type_PrimitiveTypeId.UTF8;
      }
      type.optionalType = pb.OptionalType()..item = innerType;
    } else if (value is YdbList) {
      final List<IYdbValue<dynamic>> items = value.value;
      final pb.Type itemType;
      if (items.isNotEmpty) {
        itemType = _valueTypeToProto(items.first);
      } else {
        itemType = pb.Type()..typeId = pb.Type_PrimitiveTypeId.UTF8;
      }
      type.listType = pb.ListType()..item = itemType;
    } else if (value is YdbTuple) {
      type.tupleType = pb.TupleType()
        ..elements.addAll(value.value.map(_valueTypeToProto));
    } else if (value is YdbStruct) {
      type.structType = pb.StructType()
        ..members.addAll(value.value.entries.map(
          (MapEntry<String, IYdbValue<dynamic>> e) => pb.StructMember()
            ..name = e.key
            ..type = _valueTypeToProto(e.value),
        ));
    } else if (value is YdbDict) {
      final List<MapEntry<IYdbValue<dynamic>, IYdbValue<dynamic>>> entries =
          value.value.entries.toList();
      type.dictType = pb.DictType()
        ..key = (entries.isNotEmpty
            ? _valueTypeToProto(entries.first.key)
            : pb.Type()
          ..typeId = pb.Type_PrimitiveTypeId.UTF8)
        ..payload = (entries.isNotEmpty
            ? _valueTypeToProto(entries.first.value)
            : pb.Type()
          ..typeId = pb.Type_PrimitiveTypeId.UTF8);
    } else {
      throw ArgumentError('Unsupported YDB type: ${value.runtimeType}');
    }

    return type;
  }

  // === Value Conversion (SDK → Proto) ===

  static pb.Value _valueToProto(IYdbValue value) {
    final pb.Value protoValue = pb.Value();

    if (value is YdbInt8) {
      protoValue.int32Value = value.value;
    } else if (value is YdbInt16) {
      protoValue.int32Value = value.value;
    } else if (value is YdbInt32) {
      protoValue.int32Value = value.value;
    } else if (value is YdbInt64) {
      protoValue.int64Value = fixnum.Int64(value.value);
    } else if (value is YdbUint8) {
      protoValue.uint32Value = value.value;
    } else if (value is YdbUint16) {
      protoValue.uint32Value = value.value;
    } else if (value is YdbUint32) {
      protoValue.uint32Value = value.value;
    } else if (value is YdbUint64) {
      protoValue.uint64Value = fixnum.Int64(value.value);
    } else if (value is YdbFloat) {
      protoValue.floatValue = value.value;
    } else if (value is YdbDouble) {
      protoValue.doubleValue = value.value;
    } else if (value is YdbBool) {
      protoValue.boolValue = value.value;
    } else if (value is YdbString) {
      protoValue.bytesValue = value.value.codeUnits;
    } else if (value is YdbUtf8) {
      protoValue.textValue = value.value;
    } else if (value is YdbBytes) {
      protoValue.bytesValue = value.value;
    } else if (value is YdbDate) {
      // Date is days since epoch (1970-01-01)
      protoValue.uint32Value = value.value.millisecondsSinceEpoch ~/ 86400000;
    } else if (value is YdbDatetime) {
      // Datetime is seconds since epoch
      protoValue.uint32Value = value.value.millisecondsSinceEpoch ~/ 1000;
    } else if (value is YdbTimestamp) {
      // Timestamp is microseconds since epoch
      protoValue.uint64Value =
          fixnum.Int64(value.value.millisecondsSinceEpoch * 1000);
    } else if (value is YdbInterval) {
      // Interval is microseconds
      protoValue.int64Value = fixnum.Int64(value.value.inMicroseconds);
    } else if (value is YdbDecimal) {
      // Decimal as string, protobuf uses low128/high128
      final String str = value.value;
      protoValue.low128 = fixnum.Int64.parseInt(str);
    } else if (value is YdbUuid) {
      final String hexStr = value.value.replaceAll('-', '');
      protoValue.low128 = fixnum.Int64.parseHex(hexStr.substring(0, 16));
      protoValue.high128 = fixnum.Int64.parseHex(hexStr.substring(16));
    } else if (value is YdbJson) {
      protoValue.textValue = value.value;
    } else if (value is YdbJsonDocument) {
      protoValue.textValue = value.value;
    } else if (value is YdbOptional) {
      if (value.value != null) {
        protoValue.nestedValue = _valueToProto(value.value!);
      } else {
        // For null optional values, leave value empty or set nullFlagValue
        // protobuf uses missing field to represent null in Optional
      }
    } else if (value is YdbList) {
      protoValue.items.addAll(value.value.map(_valueToProto));
    } else if (value is YdbTuple) {
      protoValue.items.addAll(value.value.map(_valueToProto));
    } else if (value is YdbStruct) {
      protoValue.items.addAll(value.value.values.map(_valueToProto));
    } else if (value is YdbDict) {
      protoValue.pairs.addAll(value.value.entries.map(
          (MapEntry<IYdbValue<dynamic>, IYdbValue<dynamic>> e) => pb.ValuePair()
            ..key = _valueToProto(e.key)
            ..payload = _valueToProto(e.value)));
    } else {
      throw ArgumentError('Unsupported YDB value: ${value.runtimeType}');
    }

    return protoValue;
  }

  // === Reverse Conversion (Proto → SDK) ===

  static IYdbValue _protoToValue(pb.Type type, pb.Value value) {
    // Primitives by typeId
    if (type.hasTypeId()) {
      switch (type.typeId) {
        case pb.Type_PrimitiveTypeId.INT8:
          return YdbInt8(value.int32Value);
        case pb.Type_PrimitiveTypeId.INT16:
          return YdbInt16(value.int32Value);
        case pb.Type_PrimitiveTypeId.INT32:
          return YdbInt32(value.int32Value);
        case pb.Type_PrimitiveTypeId.INT64:
          return YdbInt64(value.int64Value.toInt());
        case pb.Type_PrimitiveTypeId.UINT8:
          return YdbUint8(value.uint32Value);
        case pb.Type_PrimitiveTypeId.UINT16:
          return YdbUint16(value.uint32Value);
        case pb.Type_PrimitiveTypeId.UINT32:
          return YdbUint32(value.uint32Value);
        case pb.Type_PrimitiveTypeId.UINT64:
          return YdbUint64(value.uint64Value.toInt());
        case pb.Type_PrimitiveTypeId.FLOAT:
          return YdbFloat(value.floatValue);
        case pb.Type_PrimitiveTypeId.DOUBLE:
          return YdbDouble(value.doubleValue);
        case pb.Type_PrimitiveTypeId.BOOL:
          return YdbBool(value.boolValue);
        case pb.Type_PrimitiveTypeId.STRING:
          return YdbString(String.fromCharCodes(value.bytesValue));
        case pb.Type_PrimitiveTypeId.UTF8:
          return YdbUtf8(value.textValue);
        case pb.Type_PrimitiveTypeId.YSON:
          return YdbBytes(value.bytesValue);
        case pb.Type_PrimitiveTypeId.DATE:
          // Date is days since epoch, convert to DateTime
          return YdbDate(DateTime.fromMillisecondsSinceEpoch(
              value.uint32Value * 86400000,
              isUtc: true));
        case pb.Type_PrimitiveTypeId.DATETIME:
          // Datetime is seconds since epoch, convert to DateTime
          return YdbDatetime(DateTime.fromMillisecondsSinceEpoch(
              value.uint32Value * 1000,
              isUtc: true));
        case pb.Type_PrimitiveTypeId.TIMESTAMP:
          // Timestamp is microseconds since epoch, convert to DateTime
          return YdbTimestamp(DateTime.fromMicrosecondsSinceEpoch(
              value.uint64Value.toInt(),
              isUtc: true));
        case pb.Type_PrimitiveTypeId.INTERVAL:
          // Interval is microseconds, convert to Duration
          return YdbInterval(Duration(microseconds: value.int64Value.toInt()));
        case pb.Type_PrimitiveTypeId.UUID:
          final String low = value.low128.toRadixString(16).padLeft(16, '0');
          final String high = value.high128.toRadixString(16).padLeft(16, '0');
          return YdbUuid(
              '${low.substring(0, 8)}-${low.substring(8, 12)}-${low.substring(12, 16)}-${high.substring(0, 4)}-${high.substring(4)}');
        case pb.Type_PrimitiveTypeId.JSON:
          return YdbJson(value.textValue);
        case pb.Type_PrimitiveTypeId.JSON_DOCUMENT:
          return YdbJsonDocument(value.textValue);
        default:
          throw ArgumentError('Unsupported primitive type: ${type.typeId}');
      }
    }

    // Optional
    if (type.hasOptionalType()) {
      if (value.hasNullFlagValue()) {
        return YdbOptional(null);
      }
      if (value.hasNestedValue()) {
        return YdbOptional(
            _protoToValue(type.optionalType.item, value.nestedValue));
      }
      return YdbOptional(null);
    }

    // List
    if (type.hasListType()) {
      return YdbList(value.items
          .map((pb.Value item) => _protoToValue(type.listType.item, item))
          .toList());
    }

    // Tuple
    if (type.hasTupleType()) {
      final List<IYdbValue<dynamic>> elements = <IYdbValue>[];
      for (int i = 0; i < value.items.length; i++) {
        elements.add(_protoToValue(type.tupleType.elements[i], value.items[i]));
      }
      return YdbTuple(elements);
    }

    // Struct
    if (type.hasStructType()) {
      final Map<String, IYdbValue<dynamic>> members = <String, IYdbValue>{};
      for (int i = 0; i < value.items.length; i++) {
        final pb.StructMember member = type.structType.members[i];
        members[member.name] = _protoToValue(member.type, value.items[i]);
      }
      return YdbStruct(members);
    }

    // Dict
    if (type.hasDictType()) {
      final Map<IYdbValue<dynamic>, IYdbValue<dynamic>> items =
          <IYdbValue, IYdbValue>{};
      for (final pb.ValuePair pair in value.pairs) {
        final IYdbValue<dynamic> key =
            _protoToValue(type.dictType.key, pair.key);
        final IYdbValue<dynamic> val =
            _protoToValue(type.dictType.payload, pair.payload);
        items[key] = val;
      }
      return YdbDict(items);
    }

    // Decimal
    if (type.hasDecimalType()) {
      return YdbDecimal(value.low128.toString());
    }

    throw ArgumentError('Unsupported type: $type');
  }
}
