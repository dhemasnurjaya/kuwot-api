import 'package:fpdart/fpdart.dart';
import 'package:kuwot_api/core/error/failure.dart';
import 'package:kuwot_api/data/data_sources/remote/unsplash_remote_data_source.dart';
import 'package:kuwot_api/domain/entities/image.dart';
import 'package:kuwot_api/domain/repositories/image_repository.dart';

/// An implementation of [ImageRepository].
class ImageRepositoryImpl implements ImageRepository {
  /// Creates a new [ImageRepositoryImpl] with the provided [unsplashDataSource].
  ImageRepositoryImpl({
    required this.unsplashDataSource,
  });

  /// A remote data source of Unsplash.
  final UnsplashRemoteDataSource unsplashDataSource;

  @override
  Future<Either<Failure, List<Image>>> getRandomImages({int count = 20}) async {
    try {
      final models = await unsplashDataSource.getRandomImages(count: count);
      return Right(models.map(Image.fromModel).toList());
    } on Exception catch (e) {
      return Left(UnexpectedFailure(message: e.toString()));
    }
  }
}
