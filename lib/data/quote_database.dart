import 'package:kuwot_api/core/data/sqlite_database.dart';
import 'package:sqlite3/sqlite3.dart';

/// A class for the quote database (SQLite).
class QuoteDb implements SqliteDb {
  Database? _conn;

  @override
  String get dbFilename => './quotes.db';

  @override
  OpenMode get dbOpenMode => OpenMode.readOnly;

  @override
  void initialize() {
    _conn ??= sqlite3.open(
      dbFilename,
      mode: dbOpenMode,
    );
  }

  @override
  Row? select(
    String query, [
    List<Object?> queryParams = const [],
  ]) {
    if (_conn == null) {
      throw Exception(
        'Database not initialized, call initialize() before proceeding',
      );
    }

    return _conn?.select(query, queryParams).firstOrNull;
  }

  @override
  void close() {
    _conn?.dispose();
  }
}
