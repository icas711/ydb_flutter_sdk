import 'package:flutter/material.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

/// Supported YDB primitive types for column definitions.
const List<String> kYdbTypes = <String>[
  'Bool',
  'Int8',
  'Int16',
  'Int32',
  'Int64',
  'Uint8',
  'Uint16',
  'Uint32',
  'Uint64',
  'Float',
  'Double',
  'String',
  'Utf8',
  'Date',
  'Datetime',
  'Timestamp',
  'Interval',
  'Json',
  'JsonDocument',
  'Uuid',
];

/// Page for creating a new YDB table.
///
/// Provides a form to define:
/// - Table name
/// - Columns (name, type, nullable toggle)
/// - Primary key (multi-select from columns)
class CreateTablePage extends StatefulWidget {
  final YdbDriver driver;

  const CreateTablePage({super.key, required this.driver});

  @override
  State<CreateTablePage> createState() => _CreateTablePageState();
}

class _ColumnDef {
  final TextEditingController nameController;
  String type;
  bool nullable;
  bool isPrimaryKey;

  _ColumnDef({
    String name = '',
    this.type = 'Utf8',
    this.nullable = true,
    this.isPrimaryKey = false,
  }) : nameController = TextEditingController(text: name);

  void dispose() => nameController.dispose();
}

class _CreateTablePageState extends State<CreateTablePage> {
  final TextEditingController _tableNameController = TextEditingController();
  final List<_ColumnDef> _columns = <_ColumnDef>[];
  bool _creating = false;

  @override
  void initState() {
    super.initState();
    // Start with one default column
    _columns.add(
      _ColumnDef(
        name: 'id',
        type: 'Int64',
        nullable: false,
        isPrimaryKey: true,
      ),
    );
  }

  @override
  void dispose() {
    _tableNameController.dispose();
    for (final _ColumnDef col in _columns) {
      col.dispose();
    }
    super.dispose();
  }

  void _addColumn() {
    setState(() {
      _columns.add(_ColumnDef());
    });
  }

  void _removeColumn(int index) {
    setState(() {
      _columns[index].dispose();
      _columns.removeAt(index);
    });
  }

  Future<void> _createTable() async {
    final String tableName = _tableNameController.text.trim();
    if (tableName.isEmpty) {
      _showError('Enter a table name');
      return;
    }

    final List<ColumnDefinition> columns = <ColumnDefinition>[];
    final List<String> primaryKey = <String>[];

    for (int i = 0; i < _columns.length; i++) {
      final String name = _columns[i].nameController.text.trim();
      if (name.isEmpty) {
        _showError('Column ${i + 1} has no name');
        return;
      }
      columns.add(
        ColumnDefinition(
          name: name,
          type: _columns[i].type,
          nullable: _columns[i].nullable,
        ),
      );
      if (_columns[i].isPrimaryKey) {
        primaryKey.add(name);
      }
    }

    if (columns.isEmpty) {
      _showError('Add at least one column');
      return;
    }
    if (primaryKey.isEmpty) {
      _showError('Select at least one primary key column');
      return;
    }

    setState(() => _creating = true);

    try {
      await widget.driver.schemeClient.createTable(
        tableName,
        TableDescription(
          name: tableName,
          columns: columns,
          primaryKey: primaryKey,
        ),
      );

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Table "$tableName" created')));
        Navigator.pop(context, true);
      }
    } catch (e) {
      setState(() => _creating = false);
      if (mounted) {
        _showError('Error: $e');
      }
    }
  }

  void _showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), backgroundColor: Colors.red),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Create Table'),
        actions: <Widget>[
          TextButton.icon(
            onPressed: _creating ? null : _createTable,
            icon: _creating
                ? const SizedBox(
                    width: 16,
                    height: 16,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                : const Icon(Icons.check),
            label: const Text('Create'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          // Table name
          TextField(
            controller: _tableNameController,
            decoration: const InputDecoration(
              labelText: 'Table Name',
              hintText: 'e.g. users, orders, events',
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.table_chart),
            ),
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: 24),

          // Columns header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Columns', style: Theme.of(context).textTheme.titleMedium),
              FilledButton.icon(
                onPressed: _addColumn,
                icon: const Icon(Icons.add, size: 18),
                label: const Text('Add Column'),
              ),
            ],
          ),
          const SizedBox(height: 12),

          // Column list
          ..._columns.asMap().entries.map((MapEntry<int, _ColumnDef> entry) {
            final int index = entry.key;
            final _ColumnDef col = entry.value;
            return _buildColumnCard(index, col);
          }),

          if (_columns.isEmpty)
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Center(
                child: Text(
                  'No columns defined. Tap "Add Column" to start.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildColumnCard(int index, _ColumnDef col) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                // Column number
                CircleAvatar(
                  radius: 14,
                  child: Text(
                    '${index + 1}',
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
                const SizedBox(width: 12),
                // Column name
                Expanded(
                  flex: 3,
                  child: TextField(
                    controller: col.nameController,
                    decoration: const InputDecoration(
                      labelText: 'Column Name',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                // Remove button
                IconButton(
                  icon: const Icon(Icons.close, color: Colors.red),
                  onPressed: () => _removeColumn(index),
                  tooltip: 'Remove column',
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: <Widget>[
                const SizedBox(width: 40), // Align with name field
                // Type dropdown
                Expanded(
                  flex: 2,
                  child: DropdownButtonFormField<String>(
                    initialValue: col.type,
                    decoration: const InputDecoration(
                      labelText: 'Type',
                      isDense: true,
                      border: OutlineInputBorder(),
                    ),
                    items: kYdbTypes
                        .map(
                          (String t) => DropdownMenuItem<String>(
                            value: t,
                            child: Text(t),
                          ),
                        )
                        .toList(),
                    onChanged: (String? value) {
                      if (value != null) {
                        setState(() => col.type = value);
                      }
                    },
                  ),
                ),
                const SizedBox(width: 12),
                // Nullable checkbox
                FilterChip(
                  label: const Text('Nullable'),
                  selected: col.nullable,
                  onSelected: (bool value) {
                    setState(() => col.nullable = value);
                  },
                ),
                const SizedBox(width: 8),
                // Primary key checkbox
                FilterChip(
                  label: const Text('PK'),
                  selected: col.isPrimaryKey,
                  selectedColor: Theme.of(context).colorScheme.primaryContainer,
                  onSelected: (bool value) {
                    setState(() => col.isPrimaryKey = value);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
