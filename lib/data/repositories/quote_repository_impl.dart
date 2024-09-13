import 'package:kuwot_api/data/data_sources/local/quote_local_data_source.dart';
import 'package:kuwot_api/data/data_sources/remote/translate_remote_data_source.dart';
import 'package:kuwot_api/data/models/quote_model.dart';
import 'package:kuwot_api/domain/entities/quote.dart';
import 'package:kuwot_api/domain/entities/translation.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

/// An implementation of [QuoteRepository].
class QuoteRepositoryImpl implements QuoteRepository {
  /// Creates a new [QuoteRepositoryImpl].
  ///
  /// [quoteDataSource] is the local data source of quotes.
  /// [translateDataSource] is the remote data source of translation.
  QuoteRepositoryImpl({
    required this.quoteDataCount,
    required this.quoteDataSource,
    required this.translateDataSource,
  });

  /// The local data source of quotes.
  final QuoteLocalDataSource quoteDataSource;

  /// The remote data source of translation.
  final TranslateRemoteDataSource translateDataSource;

  /// The maximum random id, used to get a random quote.
  /// This is set to the total count of quotes.
  final int quoteDataCount;

  @override
  Future<Quote> getRandomQuote({String? langId}) {
    final quoteModel = quoteDataSource.getRandomQuote(quoteDataCount);
    return _translateQuote(quoteModel, langId);
  }

  @override
  Future<Quote?> getQuote(int id, {String? langId}) {
    final quoteModel = quoteDataSource.getQuote(id);
    if (quoteModel == null) {
      return Future.value();
    }

    return _translateQuote(quoteModel, langId);
  }

  Future<Quote> _translateQuote(
    QuoteModel quoteModel,
    String? langId,
  ) async {
    if (langId == null) {
      return Quote.fromModel(quoteModel);
    }

    final result = await translateDataSource.translate(
      quoteModel.quote,
      langId,
    );

    return Quote.fromModel(
      quoteModel.copyWith(
        quote: result.translatedText,
      ),
    );
  }

  @override
  int getQuoteCount() {
    /// May differ than [QuoteRepositoryImpl.quoteDataCount]
    /// because it is fetched from the local data source directly, while the
    /// [QuoteRepositoryImpl.quoteDataCount] is set during initialization.
    return quoteDataSource.getQuoteCount();
  }

  @override
  List<Translation> getTranslations() {
    return quoteDataSource
        .getTranslations()
        .map(Translation.fromModel)
        .toList();
  }
}
