import 'package:flutter/material.dart';
import 'package:ydb_flutter_sdk/ydb_flutter_sdk.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({super.key});

  @override
  State<ContactListPage> createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  bool _tableInitialized = false;
  String? _initError;

  @override
  void initState() {
    super.initState();
    _initializeTable();
  }

  YdbDriver get _driver =>
      context.findAncestorWidgetOfExactType<YdbConnectionWidget>()!.driver;

  /// Creates the contacts table via SchemeClient if it doesn't exist.
  Future<void> _initializeTable() async {
    try {
      await _driver.schemeClient.createTable(
        'contacts',
        TableDescription(
          name: 'contacts',
          columns: <ColumnDefinition>[
            ColumnDefinition(name: 'id', type: 'Uint64', nullable: false),
            ColumnDefinition(name: 'user_name', type: 'Utf8'),
            ColumnDefinition(name: 'channel_id', type: 'Uint64'),
            ColumnDefinition(name: 'contact_value', type: 'Utf8'),
            ColumnDefinition(name: 'is_active', type: 'Bool'),
            ColumnDefinition(name: 'created_at', type: 'Timestamp'),
            ColumnDefinition(name: 'updated_at', type: 'Timestamp'),
          ],
          primaryKey: <String>['id'],
        ),
      );
      print('Table "contacts" created successfully');
    } catch (e) {
      // Table may already exist — that's fine
      print('Create table result: $e');
    }

    if (mounted) {
      setState(() {
        _tableInitialized = true;
      });
    }
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
            icon: const Icon(Icons.info_outline),
            tooltip: 'Table Info',
            onPressed: () => _showTableInfo(context),
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () {
              setState(() {}); // Trigger rebuild to refresh query
            },
          ),
          PopupMenuButton<String>(
            onSelected: (String value) {
              switch (value) {
                case 'recreate':
                  _recreateTable(context);
                  break;
                case 'drop':
                  _confirmDropTable(context);
                  break;
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'recreate',
                child: ListTile(
                  leading: Icon(Icons.restart_alt),
                  title: Text('Recreate Table'),
                ),
              ),
              const PopupMenuItem<String>(
                value: 'drop',
                child: ListTile(
                  leading: Icon(Icons.delete_forever, color: Colors.red),
                  title: Text(
                    'Drop Table',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
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

  /// Shows table structure via SchemeClient.describeTable.
  Future<void> _showTableInfo(BuildContext context) async {
    try {
      final TableDescription desc = await _driver.schemeClient.describeTable(
        'contacts',
      );

      if (!context.mounted) return;

      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Table: contacts'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Primary Key: ${desc.primaryKey.join(", ")}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Columns:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  ...desc.columns.map(
                    (ColumnDefinition col) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              col.name,
                              style: const TextStyle(fontFamily: 'monospace'),
                            ),
                          ),
                          Text(
                            col.type,
                            style: const TextStyle(
                              fontFamily: 'monospace',
                              color: Colors.blue,
                            ),
                          ),
                          if (col.nullable)
                            const Text(
                              '?',
                              style: TextStyle(
                                fontFamily: 'monospace',
                                color: Colors.orange,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                  if (desc.indexes.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    const Text(
                      'Indexes:',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    ...desc.indexes.map(
                      (IndexDescription idx) => Text(
                        '  ${idx.name} (${idx.columns.join(", ")})',
                        style: const TextStyle(fontFamily: 'monospace'),
                      ),
                    ),
                  ],
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error describing table: $e')));
      }
    }
  }

  /// Drops and recreates the contacts table.
  Future<void> _recreateTable(BuildContext context) async {
    try {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Recreating table...')));

      // Drop existing table
      try {
        await _driver.schemeClient.dropTable('contacts');
      } catch (_) {
        // Table might not exist
      }

      // Create fresh table
      await _driver.schemeClient.createTable(
        'contacts',
        TableDescription(
          name: 'contacts',
          columns: <ColumnDefinition>[
            ColumnDefinition(name: 'id', type: 'Uint64', nullable: false),
            ColumnDefinition(name: 'user_name', type: 'Utf8'),
            ColumnDefinition(name: 'channel_id', type: 'Uint64'),
            ColumnDefinition(name: 'contact_value', type: 'Utf8'),
            ColumnDefinition(name: 'is_active', type: 'Bool'),
            ColumnDefinition(name: 'created_at', type: 'Timestamp'),
            ColumnDefinition(name: 'updated_at', type: 'Timestamp'),
          ],
          primaryKey: <String>['id'],
        ),
      );

      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Table recreated successfully')),
        );
        setState(() {}); // Refresh the list
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error recreating table: $e')));
      }
    }
  }

  /// Confirms and drops the contacts table.
  Future<void> _confirmDropTable(BuildContext context) async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Drop Table'),
          content: const Text(
            'Are you sure you want to drop the contacts table?\n'
            'All data will be permanently lost.',
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(true),
              child: const Text('Drop', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );

    if (confirmed != true || !context.mounted) return;

    try {
      await _driver.schemeClient.dropTable('contacts');

      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(const SnackBar(content: Text('Table dropped')));
        setState(() {}); // Refresh — will show error or empty
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error dropping table: $e')));
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
