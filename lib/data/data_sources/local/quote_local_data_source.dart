import 'dart:math' show Random;

import 'package:kuwot_api/core/data/sqlite_database.dart';
import 'package:kuwot_api/data/models/quote_model.dart';
import 'package:kuwot_api/data/models/translation_model.dart';

/// A contract for local data source of quotes.
abstract class QuoteLocalDataSource {
  /// Get a random quote.
  QuoteModel getRandomQuote(int maxRandomId);

  /// Get a quote by its [id].
  QuoteModel? getQuote(int id);

  /// Get quote count
  int getQuoteCount();

  /// Get translation list.
  List<TranslationModel> getTranslations();
}

/// An implementation of [QuoteLocalDataSource].
class QuoteLocalDataSourceImpl implements QuoteLocalDataSource {
  /// Creates a new [QuoteLocalDataSourceImpl] with the provided [sqliteDb].
  QuoteLocalDataSourceImpl({
    required this.sqliteDb,
  });

  /// [SqliteDb] implementation.
  final SqliteDb sqliteDb;

  final _random = Random();

  int _getRandomId(int min, int max) => min + _random.nextInt(max - min);

  @override
  QuoteModel getRandomQuote(int maxRandomId) {
    final result = sqliteDb.select(
      'SELECT * FROM quotes WHERE id = ?;',
      [_getRandomId(1, maxRandomId)],
    );

    return QuoteModel(
      id: result?['id'] as int,
      quote: result?['quote'] as String,
      author: result?['author'] as String,
    );
  }

  @override
  QuoteModel? getQuote(int id) {
    final result = sqliteDb.select(
      'SELECT * FROM quotes WHERE id = ?;',
      [id],
    );

    return result == null
        ? null
        : QuoteModel(
            id: result['id'] as int,
            quote: result['quote'] as String,
            author: result['author'] as String,
          );
  }

  @override
  int getQuoteCount() {
    final result = sqliteDb.select(
      'SELECT COUNT(*) FROM quotes;',
    );

    return result?['COUNT(*)'] as int;
  }

  @override
  List<TranslationModel> getTranslations() {
    final result = sqliteDb.selectMany(
      'SELECT * FROM translations;',
    );
    final translations = <TranslationModel>[];
    for (final row in result) {
      translations.add(
        TranslationModel(
          id: row['id'] as String,
          lang: row['lang'] as String,
          tableName: row['table_name'] as String,
        ),
      );
    }
    return translations;
  }
}
