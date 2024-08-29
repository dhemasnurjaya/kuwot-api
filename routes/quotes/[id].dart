import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Future<Response> onRequest(
  RequestContext context,
  String id,
) async {
  final method = context.request.method;
  final params = context.request.uri.queryParameters;

  if (method == HttpMethod.get) {
    final quoteRepository = context.read<QuoteRepository>();

    final quoteId = int.tryParse(id);
    if (quoteId == null) {
      return Response.json(
        statusCode: 400,
        body: const ErrorResponse(
          message: 'Invalid quote ID',
          code: 400,
        ).toJson(),
      );
    }

    final quote = await quoteRepository.getQuote(
      int.parse(id),
      langId: params['lang'],
    );
    if (quote == null) {
      return Response.json(
        statusCode: 404,
        body: const ErrorResponse(
          message: 'Quote not found',
          code: 404,
        ).toJson(),
      );
    }

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
