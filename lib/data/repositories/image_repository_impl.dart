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
  Future<List<Image>> getRandomImages({int count = 20}) async {
    final models = await unsplashDataSource.getRandomImage(count: count);
    return models.map(Image.fromModel).toList();
  }
}
