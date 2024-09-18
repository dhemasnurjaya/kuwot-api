import 'package:fpdart/fpdart.dart';
import 'package:kuwot_api/core/error/failure.dart';
import 'package:kuwot_api/domain/entities/image.dart';

/// A contract for image repositories.
abstract class ImageRepository {
  /// Get a random image.
  /// Unsplash allows up to 30 image per request.
  Future<Either<Failure, List<Image>>> getRandomImages({int count = 20});
}
