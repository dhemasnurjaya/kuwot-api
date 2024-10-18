import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Response onRequest(RequestContext context) {
  final quoteRepository = context.read<QuoteRepository>();
  final quoteTranslations = quoteRepository.getTranslations();

  return quoteTranslations.fold(
    (failure) {
      return Response.json(
        statusCode: 500,
        body: {
          'message': failure.message,
          'code': 500,
        },
      );
    },
    (translations) {
      return Response.json(
        body: {
          'message': 'Welcome to Kuwot API!',
          'time': DateTime.now().toUtc().toIso8601String(),
          'supportedLanguages': translations,
        },
      );
    },
  );
}
