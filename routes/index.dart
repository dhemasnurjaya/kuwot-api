import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Response onRequest(RequestContext context) {
  final quoteRepository = context.read<QuoteRepository>();
  final quoteCountResult = quoteRepository.getQuoteCount();

  return quoteCountResult.fold(
    (failure) {
      return Response.json(
        statusCode: 500,
        body: {
          'message': failure.message,
          'code': 500,
        },
      );
    },
    (count) {
      return Response.json(
        body: {
          'message': 'Welcome to Kuwot API!',
          'time': DateTime.now().toIso8601String(),
          'quoteCount': count,
        },
      );
    },
  );
}
