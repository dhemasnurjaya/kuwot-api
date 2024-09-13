import 'package:fpdart/fpdart.dart';
import 'package:kuwot_api/core/error/failure.dart';
import 'package:kuwot_api/data/data_sources/local/quote_local_data_source.dart';
import 'package:kuwot_api/data/data_sources/remote/translate_remote_data_source.dart';
import 'package:kuwot_api/data/models/quote_model.dart';
import 'package:kuwot_api/data/models/translation_model.dart';
import 'package:kuwot_api/data/repositories/quote_repository_impl.dart';
import 'package:kuwot_api/domain/entities/quote.dart';
import 'package:kuwot_api/domain/entities/translation.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockQuoteDataSource extends Mock implements QuoteLocalDataSource {}

class MockTranslateDataSource extends Mock
    implements TranslateRemoteDataSource {}

void main() {
  late MockQuoteDataSource mockQuoteDataSource;
  late MockTranslateDataSource mockTranslateDataSource;
  late QuoteRepository quoteRepository;

  const tLangId = 'id';

  setUp(() {
    mockQuoteDataSource = MockQuoteDataSource();
    mockTranslateDataSource = MockTranslateDataSource();
    quoteRepository = QuoteRepositoryImpl(
      quoteDataSource: mockQuoteDataSource,
      translateDataSource: mockTranslateDataSource,
      quoteDataCount: 10,
      supportedTranslation: [
        const TranslationModel(
          id: tLangId,
          lang: 'lang',
          tableName: 'table_name',
        ),
      ],
    );
  });

  group('getRandomQuote', () {
    test('should return a random quote', () async {
      // arrange
      const tQuoteModel = QuoteModel(
        id: 1,
        quote: 'quote',
        author: 'author',
      );

      when(
        () => mockQuoteDataSource.getRandomQuote(
          maxRandomId: any(named: 'maxRandomId'),
          tableName: any(named: 'tableName'),
        ),
      ).thenReturn(tQuoteModel);

      // act
      final result = quoteRepository.getRandomQuote(langId: tLangId);

      // assert
      expect(result, Right<Failure, Quote>(Quote.fromModel(tQuoteModel)));
      verify(
        () => mockQuoteDataSource.getRandomQuote(
          maxRandomId: any(named: 'maxRandomId'),
          tableName: any(named: 'tableName'),
        ),
      ).called(1);
      verifyNever(() => mockTranslateDataSource.translate(any(), any()));
    });

    test('should return a translated random quote', () async {
      // arrange
      const tQuoteModel = QuoteModel(
        id: 1,
        quote: 'quote',
        author: 'author',
      );

      when(
        () => mockQuoteDataSource.getRandomQuote(
          maxRandomId: any(named: 'maxRandomId'),
          tableName: any(named: 'tableName'),
        ),
      ).thenReturn(tQuoteModel);

      // act
      final result = quoteRepository.getRandomQuote(langId: tLangId);

      // assert
      expect(result, Right<Failure, Quote>(Quote.fromModel(tQuoteModel)));
      verify(
        () => mockQuoteDataSource.getRandomQuote(
          maxRandomId: any(named: 'maxRandomId'),
          tableName: any(named: 'tableName'),
        ),
      ).called(1);
    });
  });

  group('getTranslations', () {
    test('should return a list of translations', () {
      // arrange
      const tTranslations = [
        TranslationModel(
          id: tLangId,
          lang: 'lang',
          tableName: 'table_name',
        ),
      ];
      when(() => mockQuoteDataSource.getTranslations())
          .thenReturn(tTranslations);
      // act
      final result = quoteRepository.getTranslations();
      // assert
      expect(result, isA<Right<Failure, List<Translation>>>());
      verify(() => mockQuoteDataSource.getTranslations()).called(1);
    });
  });
}
