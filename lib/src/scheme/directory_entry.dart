/// Represents an entry in a YDB directory listing.
///
/// Each entry corresponds to a schema object (table, directory, etc.)
/// returned by [SchemeClient.listDirectory].
class DirectoryEntry {
  /// Name of the entry (e.g., table name or subdirectory name).
  final String name;

  /// Owner of the entry (SID).
  final String owner;

  /// Type of the entry.
  final DirectoryEntryType type;

  /// Size in bytes (only filled for TABLE and DATABASE entries).
  final int sizeBytes;

  const DirectoryEntry({
    required this.name,
    required this.type,
    this.owner = '',
    this.sizeBytes = 0,
  });

  /// Whether this entry is a table.
  bool get isTable => type == DirectoryEntryType.table;

  /// Whether this entry is a directory.
  bool get isDirectory => type == DirectoryEntryType.directory;

  /// Whether this entry is a column table.
  bool get isColumnTable => type == DirectoryEntryType.columnTable;

  @override
  String toString() => 'DirectoryEntry(name: $name, type: $type)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DirectoryEntry &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          type == other.type;

  @override
  int get hashCode => name.hashCode ^ type.hashCode;
}

/// Types of entries in a YDB directory.
enum DirectoryEntryType {
  /// Unspecified type.
  unspecified,

  /// A directory node.
  directory,

  /// A regular table (row-based).
  table,

  /// A persistent queue group.
  persQueueGroup,

  /// A database.
  database,

  /// An RTMR volume.
  rtmrVolume,

  /// A block store volume.
  blockStoreVolume,

  /// A coordination node.
  coordinationNode,

  /// A column store.
  columnStore,

  /// A column table.
  columnTable,

  /// A sequence.
  sequence,

  /// A replication.
  replication,

  /// A topic.
  topic,
}
