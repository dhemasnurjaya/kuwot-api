import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/core/error/failure.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Response onRequest(
  RequestContext context,
  String id,
) {
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

    final result = quoteRepository.getQuote(
      quoteId,
      langId: params['lang'],
    );

    return result.fold(
      (failure) {
        var statusCode = 500;

        if (failure is DataNotFoundFailure) {
          statusCode = 404;
        }

        return Response.json(
          statusCode: statusCode,
          body: ErrorResponse(
            message: failure.message,
            code: statusCode,
          ).toJson(),
        );
      },
      (quote) => Response.json(body: quote.toJson()),
    );
  }

  return Response.json(
    statusCode: 405,
    body: const ErrorResponse(
      message: 'Method now allowed',
      code: 405,
    ).toJson(),
  );
}
