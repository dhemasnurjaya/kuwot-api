import 'package:fpdart/fpdart.dart';
import 'package:kuwot_api/core/error/failure.dart';
import 'package:kuwot_api/data/data_sources/local/quote_local_data_source.dart';
import 'package:kuwot_api/data/models/translation_model.dart';
import 'package:kuwot_api/domain/entities/quote.dart';
import 'package:kuwot_api/domain/entities/translation.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

/// An implementation of [QuoteRepository].
class QuoteRepositoryImpl implements QuoteRepository {
  /// Creates a new [QuoteRepositoryImpl].
  ///
  /// [quoteDataSource] is the local data source of quotes.
  QuoteRepositoryImpl({
    required this.quoteDataSource,
    required this.supportedTranslation,
  });

  /// The local data source of quotes.
  final QuoteLocalDataSource quoteDataSource;

  /// The list of supported translations.
  /// Used to check if user input is a valid language code.
  final List<TranslationModel> supportedTranslation;

  @override
  Either<Failure, Quote> getRandomQuote({String? langId}) {
    try {
      if (langId != null) {
        final isSupported = supportedTranslation.any(
          (element) => element.id == langId,
        );
        if (!isSupported) {
          return const Left(
            InvalidRequestFailure(
              message: 'Language not supported',
            ),
          );
        }
      }

      final translation =
          supportedTranslation.where((e) => e.id == langId).firstOrNull;
      final quoteModel = quoteDataSource.getRandomQuote(
        maxRandomId: totalQuotesCount,
        tableName: translation?.tableName,
      );
      return Right(Quote.fromModel(quoteModel));
    } on Exception catch (e) {
      return Left(DataNotFoundFailure(message: e.toString()));
    }
  }

  @override
  Either<Failure, Quote> getQuote(int id, {String? langId}) {
    try {
      if (langId != null) {
        final isSupported = supportedTranslation.any(
          (element) => element.id == langId,
        );
        if (!isSupported) {
          return const Left(
            InvalidRequestFailure(
              message: 'Language not supported',
            ),
          );
        }
      }

      final translation =
          supportedTranslation.where((e) => e.id == langId).firstOrNull;
      final quoteModel = quoteDataSource.getQuote(
        id: id,
        tableName: translation?.tableName,
      );

      if (quoteModel == null) {
        return Left(
          DataNotFoundFailure(
            message: 'Quote with id $id not found',
          ),
        );
      }

      return Right(Quote.fromModel(quoteModel));
    } on Exception catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }

  @override
  Either<Failure, List<Translation>> getTranslations() {
    try {
      final result = quoteDataSource.getTranslations();
      return Right(result.map(Translation.fromModel).toList());
    } on Exception catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }
}
