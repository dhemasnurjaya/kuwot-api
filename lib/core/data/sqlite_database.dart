import 'package:sqlite3/sqlite3.dart';

/// A contract for SQLite databases.
abstract class SqliteDb {
  /// The filename of the database.
  String get dbFilename;

  /// The [OpenMode] of the database.
  OpenMode get dbOpenMode;

  /// Initializes the database connection.
  void initialize();

  /// Executes a query [query] with list of [queryParams] for a single data.
  /// Returns a nullable [Row] object.
  Row? select(
    String query, [
    List<Object?> queryParams = const [],
  ]);

  /// Executes a query [query] with list of [queryParams] for multiple data.
  /// Returns a [ResultSet] object.
  ResultSet selectMany(
    String query, [
    List<Object?> queryParams = const [],
  ]);

  /// Closes the database connection.
  void close();
}
