import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;
  final params = context.request.uri.queryParameters;

  if (method == HttpMethod.get) {
    final quoteRepository = context.read<QuoteRepository>();
    final quote = await quoteRepository.getRandomQuote(
      langId: params['lang'],
    );
    return Response.json(body: quote.toJson());
  }

  return Response.json(
    statusCode: 405,
    body: const ErrorResponse(
      message: 'Method now allowed',
      code: 405,
    ).toJson(),
  );
}
