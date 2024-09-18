import 'package:fpdart/fpdart.dart';
import 'package:kuwot_api/core/error/failure.dart';
import 'package:kuwot_api/domain/entities/quote.dart';
import 'package:kuwot_api/domain/entities/translation.dart';

/// A contract for repositories of quotes.
abstract class QuoteRepository {
  /// Get a random quote.
  ///
  /// [langId] is the language code of the target language (optional).
  /// if [langId] is not provided, the default language is used.
  ///
  /// Returns either [Quote] on success or [Failure] on failure.
  Either<Failure, Quote> getRandomQuote({String? langId});

  /// Get a quote by its [id].
  ///
  /// [langId] is the language code of the target language (optional).
  /// if [langId] is not provided, the default language is used.
  ///
  /// Returns a Future of [Quote] of the quote with the provided [id].
  Either<Failure, Quote> getQuote(int id, {String? langId});

  /// Get the total number of quotes.
  Either<Failure, int> getQuoteCount();

  /// Get translation list.
  /// Returns a list of [Translation] of the translations.
  Either<Failure, List<Translation>> getTranslations();
}
