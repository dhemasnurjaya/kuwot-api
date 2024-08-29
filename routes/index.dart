import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Response onRequest(RequestContext context) {
  final quoteRepository = context.read<QuoteRepository>();
  final quoteCount = quoteRepository.getQuoteCount();

  return Response.json(
    body: {
      'message': 'Welcome to Kuwot API!',
      'time': DateTime.now().toIso8601String(),
      'quoteCount': quoteCount,
    },
  );
}
