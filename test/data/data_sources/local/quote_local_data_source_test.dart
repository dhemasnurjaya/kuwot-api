import 'package:kuwot_api/core/data/sqlite_database.dart';
import 'package:kuwot_api/data/data_sources/local/quote_local_data_source.dart';
import 'package:kuwot_api/data/models/quote_model.dart';
import 'package:kuwot_api/data/models/translation_model.dart';
import 'package:mocktail/mocktail.dart';
import 'package:sqlite3/sqlite3.dart';
import 'package:test/test.dart';

class MockSqliteDb extends Mock implements SqliteDb {}

void main() {
  late MockSqliteDb mockSqliteDb;
  late QuoteLocalDataSource quoteLocalDataSource;

  setUp(() {
    mockSqliteDb = MockSqliteDb();
    quoteLocalDataSource = QuoteLocalDataSourceImpl(sqliteDb: mockSqliteDb);
  });

  group('getRandomQuote', () {
    test('should return a random quote', () {
      // arrange
      const tData = [1, 'quote body', 'author name'];
      final tRow = Row(
        ResultSet(
          ['id', 'quote', 'author'],
          ['quotes', 'quotes', 'quotes'],
          [tData],
        ),
        tData,
      );
      when(() => mockSqliteDb.select(any(), any())).thenReturn(tRow);
      // act
      final result = quoteLocalDataSource.getRandomQuote(10);
      // assert
      expect(result, isA<QuoteModel>());
      verify(() => mockSqliteDb.select(any(), any())).called(1);
    });

    test('should throw an exception when the query fails', () {
      // arrange
      when(() => mockSqliteDb.select(any(), any())).thenThrow(Exception());
      // act
      QuoteModel call() => quoteLocalDataSource.getRandomQuote(10);
      // assert
      expect(call, throwsA(isA<Exception>()));
      verify(() => mockSqliteDb.select(any(), any())).called(1);
    });
  });

  group('getQuote', () {
    test('should return a quote by its id', () {
      // arrange
      const tData = [1, 'quote body', 'author name'];
      final tRow = Row(
        ResultSet(
          ['id', 'quote', 'author'],
          ['quotes', 'quotes', 'quotes'],
          [tData],
        ),
        tData,
      );
      when(() => mockSqliteDb.select(any(), any())).thenReturn(tRow);
      // act
      final result = quoteLocalDataSource.getQuote(1);
      // assert
      expect(result, isA<QuoteModel>());
      verify(() => mockSqliteDb.select(any(), any())).called(1);
    });

    test('should return null when the quote is not found', () {
      // arrange
      when(() => mockSqliteDb.select(any(), any())).thenReturn(null);
      // act
      final result = quoteLocalDataSource.getQuote(1);
      // assert
      expect(result, isNull);
      verify(() => mockSqliteDb.select(any(), any())).called(1);
    });
  });

  group('getQuoteCount', () {
    test('should return the number of quotes', () {
      // arrange
      const tExpected = 10;
      const tData = [tExpected];
      final tRow = Row(
        ResultSet(
          ['COUNT(*)'],
          ['quotes'],
          [tData],
        ),
        tData,
      );
      when(() => mockSqliteDb.select(any())).thenReturn(tRow);
      // act
      final result = quoteLocalDataSource.getQuoteCount();
      // assert
      expect(result, tExpected);
      verify(() => mockSqliteDb.select(any())).called(1);
    });
  });

  group('getTranslations', () {
    test('should return a list of translations', () {
      // arrange
      const tData = [
        ['id1', 'lang1', 'table1'],
        ['id2', 'lang2', 'table2'],
      ];
      final tRows = ResultSet(
        ['id', 'lang', 'table_name'],
        ['translations', 'translations', 'translations'],
        tData,
      );
      when(() => mockSqliteDb.selectMany(any())).thenReturn(tRows);
      // act
      final result = quoteLocalDataSource.getTranslations();
      // assert
      expect(result, isA<List<TranslationModel>>());
      verify(() => mockSqliteDb.selectMany(any())).called(1);
    });
  });
}
