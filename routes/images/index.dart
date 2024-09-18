import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/repositories/image_repository.dart';

Future<Response> onRequest(RequestContext context) async {
  final method = context.request.method;

  if (method == HttpMethod.get) {
    final imageRepository = context.read<ImageRepository>();
    final result = await imageRepository.getRandomImages();

    return result.fold(
      (failure) => Response.json(
        statusCode: 500,
        body: ErrorResponse(
          message: failure.message,
          code: 500,
        ).toJson(),
      ),
      (images) => Response.json(
        body: images.map((e) => e.toJson()).toList(),
      ),
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
