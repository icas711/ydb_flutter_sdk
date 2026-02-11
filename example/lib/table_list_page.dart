import 'package:flutter/material.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

import 'create_table_page.dart';
import 'table_data_page.dart';

/// Page 1: Lists all tables in the database.
///
/// - Tap a table → navigate to [TableDataPage]
/// - FAB → navigate to [CreateTablePage]
/// - Swipe to delete a table
class TableListPage extends StatefulWidget {
  const TableListPage({super.key});

  @override
  State<TableListPage> createState() => _TableListPageState();
}

class _TableListPageState extends State<TableListPage> {
  List<DirectoryEntry>? _entries;
  bool _loading = true;
  String? _error;

  YdbDriver get _driver =>
      context.findAncestorWidgetOfExactType<YdbConnectionWidget>()!.driver;

  @override
  void initState() {
    super.initState();
    _loadTables();
  }

  Future<void> _loadTables() async {
    setState(() {
      _loading = true;
      _error = null;
    });
    try {
      final List<DirectoryEntry> all = await _driver.schemeClient.listDirectory(
        '',
      );
      // Show only tables and column tables
      final List<DirectoryEntry> tables =
          all.where((DirectoryEntry e) => e.isTable || e.isColumnTable).toList()
            ..sort(
              (DirectoryEntry a, DirectoryEntry b) => a.name.compareTo(b.name),
            );
      setState(() {
        _entries = tables;
        _loading = false;
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _loading = false;
      });
    }
  }

  Future<void> _deleteTable(String name) async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext ctx) => AlertDialog(
        title: const Text('Delete table'),
        content: Text('Are you sure you want to delete "$name"?'),
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

    if (confirmed != true || !mounted) return;

    try {
      await _driver.schemeClient.dropTable(name);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Table "$name" deleted')));
        _loadTables();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting "$name": $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  void _navigateToCreateTable() async {
    final bool? created = await Navigator.push<bool>(
      context,
      MaterialPageRoute<bool>(builder: (_) => CreateTablePage(driver: _driver)),
    );
    if (created == true) {
      _loadTables();
    }
  }

  void _navigateToTableData(String tableName) {
    Navigator.push(
      context,
      MaterialPageRoute<void>(
        builder: (_) => TableDataPage(driver: _driver, tableName: tableName),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('YDB Tables'),
        actions: <Widget>[
          IconButton(icon: const Icon(Icons.refresh), onPressed: _loadTables),
        ],
      ),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToCreateTable,
        tooltip: 'Create Table',
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
              ElevatedButton(
                onPressed: _loadTables,
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }
    if (_entries == null || _entries!.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.table_chart_outlined,
              size: 64,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              'No tables found',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            const Text('Tap + to create your first table'),
          ],
        ),
      );
    }
    return RefreshIndicator(
      onRefresh: _loadTables,
      child: ListView.builder(
        itemCount: _entries!.length,
        itemBuilder: (BuildContext context, int index) {
          final DirectoryEntry entry = _entries![index];
          return Dismissible(
            key: ValueKey<String>(entry.name),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 24),
              color: Colors.red,
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            confirmDismiss: (_) async {
              await _deleteTable(entry.name);
              return false; // We handle removal via _loadTables()
            },
            child: ListTile(
              leading: Icon(
                entry.isColumnTable ? Icons.view_column : Icons.table_chart,
                color: Theme.of(context).colorScheme.primary,
              ),
              title: Text(entry.name),
              subtitle: Text(
                entry.isColumnTable ? 'Column Table' : 'Table',
                style: TextStyle(color: Colors.grey.shade600),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  if (entry.sizeBytes > 0)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Text(
                        _formatBytes(entry.sizeBytes),
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  IconButton(
                    icon: const Icon(Icons.delete_outline, color: Colors.red),
                    onPressed: () => _deleteTable(entry.name),
                  ),
                ],
              ),
              onTap: () => _navigateToTableData(entry.name),
            ),
          );
        },
      ),
    );
  }

  static String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}
