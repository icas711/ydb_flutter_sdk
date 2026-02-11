import 'package:flutter/material.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

/// Page 2: Displays rows from a table with CRUD operations.
///
/// - Shows table data in a scrollable DataTable
/// - Add, edit, and delete rows
/// - Pulls schema from [SchemeClient.describeTable]
class TableDataPage extends StatefulWidget {
  final YdbDriver driver;
  final String tableName;

  const TableDataPage({
    super.key,
    required this.driver,
    required this.tableName,
  });

  @override
  State<TableDataPage> createState() => _TableDataPageState();
}

class _TableDataPageState extends State<TableDataPage> {
  TableDescription? _schema;
  QueryResult? _data;
  bool _loading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      // Load schema and data in parallel
      final List<Object?> results = await Future.wait(<Future<Object?>>[
        widget.driver.schemeClient.describeTable(widget.tableName),
        widget.driver.queryClient.execute(
          'SELECT * FROM `${widget.tableName}` LIMIT 1000',
        ),
      ]);
      setState(() {
        _schema = results[0] as TableDescription;
        _data = results[1] as QueryResult;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  /// Opens a dialog to add a new row.
  void _showAddRowDialog() {
    if (_schema == null) return;
    _showRowDialog(
      title: 'Add Row',
      existingValues: null,
      onSave: (Map<String, String> values) => _insertRow(values),
    );
  }

  /// Opens a dialog to edit an existing row.
  void _showEditRowDialog(Map<String, IYdbValue> row) {
    if (_schema == null) return;
    // Convert IYdbValue to display strings
    final Map<String, String> existing = <String, String>{};
    for (final MapEntry<String, IYdbValue<dynamic>> entry in row.entries) {
      existing[entry.key] = _valueToString(entry.value);
    }
    _showRowDialog(
      title: 'Edit Row',
      existingValues: existing,
      onSave: (Map<String, String> values) => _updateRow(values, row),
    );
  }

  /// Shows a dialog to input row values.
  void _showRowDialog({
    required String title,
    required Map<String, String>? existingValues,
    required Future<void> Function(Map<String, String>) onSave,
  }) {
    final Map<String, TextEditingController> controllers =
        <String, TextEditingController>{};
    for (final ColumnDefinition col in _schema!.columns) {
      controllers[col.name] = TextEditingController(
        text: existingValues?[col.name] ?? '',
      );
    }

    showDialog<void>(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text(title),
        content: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: _schema!.columns.map((ColumnDefinition col) {
                final bool isPk = _schema!.primaryKey.contains(col.name);
                final bool isEditing = existingValues != null;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: TextField(
                    controller: controllers[col.name],
                    enabled: !(isEditing && isPk), // PK not editable
                    decoration: InputDecoration(
                      labelText:
                          '${col.name} (${_cleanType(col.type)})${isPk ? ' 🔑' : ''}',
                      hintText: col.nullable ? 'null' : 'required',
                      border: const OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              for (final TextEditingController c in controllers.values) {
                c.dispose();
              }
              Navigator.pop(ctx);
            },
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () async {
              final Map<String, String> values = <String, String>{};
              for (final MapEntry<String, TextEditingController> e
                  in controllers.entries) {
                values[e.key] = e.value.text;
              }
              Navigator.pop(ctx);
              await onSave(values);
              for (final TextEditingController c in controllers.values) {
                c.dispose();
              }
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  /// Inserts a new row via UPSERT.
  Future<void> _insertRow(Map<String, String> values) async {
    if (_schema == null) return;
    try {
      final _ParamResult p = _buildParams(values);
      final String cols = p.columnNames.join(', ');
      final String params = p.paramNames.join(', ');

      await widget.driver.queryClient.execute(
        'UPSERT INTO `${widget.tableName}` ($cols) VALUES ($params)',
        parameters: p.parameters,
      );
      _loadData();
    } catch (e) {
      _showSnackError('Insert error: $e');
    }
  }

  /// Updates an existing row via UPSERT (same PK overwrites).
  Future<void> _updateRow(
    Map<String, String> values,
    Map<String, IYdbValue> originalRow,
  ) async {
    if (_schema == null) return;
    try {
      final _ParamResult p = _buildParams(values);
      final String cols = p.columnNames.join(', ');
      final String params = p.paramNames.join(', ');

      await widget.driver.queryClient.execute(
        'UPSERT INTO `${widget.tableName}` ($cols) VALUES ($params)',
        parameters: p.parameters,
      );
      _loadData();
    } catch (e) {
      _showSnackError('Update error: $e');
    }
  }

  /// Deletes a row by its primary key values.
  Future<void> _deleteRow(Map<String, IYdbValue> row) async {
    if (_schema == null) return;

    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: const Text('Delete row'),
        content: const Text('Are you sure?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: const Text('Delete', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirmed != true) return;

    try {
      // Build WHERE clause from primary key
      final List<String> whereParts = <String>[];
      final Map<String, IYdbValue> params = <String, IYdbValue>{};
      for (final String pk in _schema!.primaryKey) {
        if (row.containsKey(pk)) {
          whereParts.add('$pk = \$pk_$pk');
          params['pk_$pk'] = row[pk]!;
        }
      }

      if (whereParts.isEmpty) {
        _showSnackError('Cannot determine primary key for row');
        return;
      }

      final String where = whereParts.join(' AND ');
      await widget.driver.queryClient.execute(
        'DELETE FROM `${widget.tableName}` WHERE $where',
        parameters: params,
      );
      _loadData();
    } catch (e) {
      _showSnackError('Delete error: $e');
    }
  }

  /// Creates parameters from form values.
  _ParamResult _buildParams(Map<String, String> values) {
    final List<String> columnNames = <String>[];
    final List<String> paramNames = <String>[];
    final Map<String, IYdbValue> parameters = <String, IYdbValue>{};

    for (final ColumnDefinition col in _schema!.columns) {
      final String rawValue = values[col.name] ?? '';
      if (rawValue.isEmpty && col.nullable) continue;
      if (rawValue.isEmpty && !col.nullable) {
        throw ArgumentError('Column "${col.name}" is required');
      }

      columnNames.add(col.name);
      paramNames.add('\$p_${col.name}');
      parameters['p_${col.name}'] = _parseValue(rawValue, col.type);
    }

    return _ParamResult(
      columnNames: columnNames,
      paramNames: paramNames,
      parameters: parameters,
    );
  }

  /// Parses a string value into the appropriate YDB type.
  IYdbValue _parseValue(String rawValue, String typeStr) {
    final String type = _cleanType(typeStr);
    switch (type) {
      case 'BOOL':
      case 'Bool':
        return YdbBool(rawValue.toLowerCase() == 'true' || rawValue == '1');
      case 'INT8':
      case 'Int8':
        return YdbInt8(int.parse(rawValue));
      case 'INT16':
      case 'Int16':
        return YdbInt16(int.parse(rawValue));
      case 'INT32':
      case 'Int32':
        return YdbInt32(int.parse(rawValue));
      case 'INT64':
      case 'Int64':
        return YdbInt64(int.parse(rawValue));
      case 'UINT8':
      case 'Uint8':
        return YdbUint8(int.parse(rawValue));
      case 'UINT16':
      case 'Uint16':
        return YdbUint16(int.parse(rawValue));
      case 'UINT32':
      case 'Uint32':
        return YdbUint32(int.parse(rawValue));
      case 'UINT64':
      case 'Uint64':
        return YdbUint64(int.parse(rawValue));
      case 'FLOAT':
      case 'Float':
        return YdbFloat(double.parse(rawValue));
      case 'DOUBLE':
      case 'Double':
        return YdbDouble(double.parse(rawValue));
      case 'UTF8':
      case 'Utf8':
        return YdbUtf8(rawValue);
      case 'STRING':
      case 'String':
        return YdbString(rawValue);
      case 'JSON':
      case 'Json':
        return YdbJson(rawValue);
      case 'JSON_DOCUMENT':
      case 'JsonDocument':
        return YdbJsonDocument(rawValue);
      case 'DATE':
      case 'Date':
        return YdbDate(DateTime.parse(rawValue));
      case 'DATETIME':
      case 'Datetime':
        return YdbDatetime(DateTime.parse(rawValue));
      case 'TIMESTAMP':
      case 'Timestamp':
        return YdbTimestamp(DateTime.parse(rawValue));
      default:
        // Default to Utf8
        return YdbUtf8(rawValue);
    }
  }

  /// Strips Optional<...> wrapper from type string.
  String _cleanType(String type) {
    if (type.startsWith('Optional<') && type.endsWith('>')) {
      return type.substring(9, type.length - 1);
    }
    return type;
  }

  /// Converts an IYdbValue to display string.
  String _valueToString(IYdbValue value) {
    final dynamic v = value.value;
    if (v == null) return '';
    return v.toString();
  }

  void _showSnackError(String msg) {
    if (!mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(msg), backgroundColor: Colors.red));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.tableName),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.info_outline),
            tooltip: 'Table Info',
            onPressed: _showTableInfo,
          ),
          IconButton(icon: const Icon(Icons.refresh), onPressed: _loadData),
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddRowDialog,
        tooltip: 'Add Row',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody() {
    if (_loading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(_error!, textAlign: TextAlign.center),
              const SizedBox(height: 16),
              ElevatedButton(onPressed: _loadData, child: const Text('Retry')),
            ],
          ),
        ),
      );
    }
    if (_data == null || _schema == null) {
      return const Center(child: Text('No data'));
    }
    if (_data!.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(Icons.inbox_outlined, size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 16),
            Text(
              'Table is empty',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            const Text('Tap + to add a row'),
          ],
        ),
      );
    }

    // Build a scrollable DataTable
    final List<String> columnNames = _data!.columns
        .map((ColumnMetadata c) => c.name)
        .toList();

    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: <DataColumn>[
            ...columnNames.map(
              (String c) => DataColumn(
                label: Text(
                  c,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const DataColumn(label: Text('Actions')),
          ],
          rows: _data!.rows.map((Map<String, IYdbValue<dynamic>> row) {
            return DataRow(
              cells: <DataCell>[
                ...columnNames.map((String c) {
                  final IYdbValue? val = row[c];
                  return DataCell(
                    Text(
                      val != null ? _valueToString(val) : 'null',
                      style: val == null
                          ? const TextStyle(
                              color: Colors.grey,
                              fontStyle: FontStyle.italic,
                            )
                          : null,
                    ),
                  );
                }),
                DataCell(
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: const Icon(Icons.edit, size: 20),
                        onPressed: () => _showEditRowDialog(row),
                        tooltip: 'Edit',
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.delete,
                          size: 20,
                          color: Colors.red,
                        ),
                        onPressed: () => _deleteRow(row),
                        tooltip: 'Delete',
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }

  void _showTableInfo() {
    if (_schema == null) return;
    showDialog<void>(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: Text('Table: ${widget.tableName}'),
        content: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Primary Key: ${_schema!.primaryKey.join(', ')}'),
                const SizedBox(height: 12),
                const Text(
                  'Columns:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                ..._schema!.columns.map((ColumnDefinition col) {
                  final bool isPk = _schema!.primaryKey.contains(col.name);
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 2),
                    child: Text(
                      '  ${col.name}  ${col.type}${col.nullable ? '?' : ''}${isPk ? '  🔑' : ''}',
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  );
                }),
                if (_schema!.indexes.isNotEmpty) ...<Widget>[
                  const SizedBox(height: 12),
                  const Text(
                    'Indexes:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  ..._schema!.indexes.map(
                    (IndexDescription idx) => Text(
                      '  ${idx.name} (${idx.columns.join(', ')})',
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ],
                const SizedBox(height: 12),
                Text('Rows loaded: ${_data?.length ?? 0}'),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }
}

class _ParamResult {
  final List<String> columnNames;
  final List<String> paramNames;
  final Map<String, IYdbValue> parameters;

  _ParamResult({
    required this.columnNames,
    required this.paramNames,
    required this.parameters,
  });
}
