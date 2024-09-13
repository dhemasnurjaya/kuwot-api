import 'package:kuwot_api/domain/entities/quote.dart';
import 'package:kuwot_api/domain/entities/translation.dart';

/// A contract for repositories of quotes.
abstract class QuoteRepository {
  /// Get a random quote.
  ///
  /// [langId] is the language code of the target language (optional).
  /// if [langId] is not provided, the default language is used.
  ///
  /// Returns a Future of [Quote] of the random quote.
  Future<Quote> getRandomQuote({String? langId});

  /// Get a quote by its [id].
  ///
  /// [langId] is the language code of the target language (optional).
  /// if [langId] is not provided, the default language is used.
  ///
  /// Returns a Future of [Quote] of the quote with the provided [id].
  Future<Quote?> getQuote(int id, {String? langId});

  /// Get the total number of quotes.
  int getQuoteCount();

  /// Get translation list.
  /// Returns a list of [Translation] of the translations.
  List<Translation> getTranslations();
}
