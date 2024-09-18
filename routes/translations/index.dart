import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    final quoteRepository = context.read<QuoteRepository>();
    final result = quoteRepository.getTranslations();

    return result.fold(
      (failure) {
        return Response.json(
          statusCode: 500,
          body: ErrorResponse(
            message: failure.message,
            code: 500,
          ).toJson(),
        );
      },
      (translations) =>
          Response.json(body: translations.map((e) => e.toJson()).toList()),
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
