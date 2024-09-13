import 'package:kuwot_api/data/data_sources/local/quote_local_data_source.dart';
import 'package:kuwot_api/data/data_sources/remote/translate_remote_data_source.dart';
import 'package:kuwot_api/data/models/quote_model.dart';
import 'package:kuwot_api/data/models/translate_model.dart';
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

  setUp(() {
    mockQuoteDataSource = MockQuoteDataSource();
    mockTranslateDataSource = MockTranslateDataSource();
    quoteRepository = QuoteRepositoryImpl(
      quoteDataCount: 10,
      quoteDataSource: mockQuoteDataSource,
      translateDataSource: mockTranslateDataSource,
    );
  });

  group('getRandomQuote', () {
    test('should return a translated random quote', () async {
      // arrange
      const tQuoteCount = 10;
      const tQuoteModel = QuoteModel(
        id: 1,
        quote: 'quote',
        author: 'author',
      );

      when(() => mockQuoteDataSource.getRandomQuote(tQuoteCount))
          .thenReturn(tQuoteModel);

      // act
      final result = await quoteRepository.getRandomQuote();

      // assert
      expect(result, Quote.fromModel(tQuoteModel));
      verify(() => mockQuoteDataSource.getRandomQuote(any())).called(1);
      verifyNever(() => mockTranslateDataSource.translate(any(), any()));
    });

    test('should return a translated random quote', () async {
      // arrange
      const tQuoteCount = 10;
      const tQuoteModel = QuoteModel(
        id: 1,
        quote: 'quote',
        author: 'author',
      );
      const tTranslateModel = TranslateModel(
        detectedLanguage: DetectedLanguage(
          language: 'en',
          confidence: 100,
        ),
        translatedText: 'translated quote',
      );

      when(() => mockQuoteDataSource.getRandomQuote(tQuoteCount))
          .thenReturn(tQuoteModel);
      when(() => mockTranslateDataSource.translate(any(), any()))
          .thenAnswer((_) async => tTranslateModel);

      // act
      final result = await quoteRepository.getRandomQuote(langId: 'id');

      // assert
      expect(
        result,
        Quote.fromModel(
          tQuoteModel.copyWith(quote: tTranslateModel.translatedText),
        ),
      );
      verify(() => mockQuoteDataSource.getRandomQuote(any())).called(1);
      verify(() => mockTranslateDataSource.translate(tQuoteModel.quote, any()))
          .called(1);
    });
  });

  group('getTranslations', () {
    test('should return a list of translations', () {
      // arrange
      const tTranslations = [
        TranslationModel(
          id: 'id',
          lang: 'lang',
          tableName: 'table_name',
        ),
      ];
      when(() => mockQuoteDataSource.getTranslations())
          .thenReturn(tTranslations);
      // act
      final result = quoteRepository.getTranslations();
      // assert
      expect(
        result,
        tTranslations.map(Translation.fromModel).toList(),
      );
      verify(() => mockQuoteDataSource.getTranslations()).called(1);
    });
  });
}
