import 'package:kuwot_api/data/data_sources/remote/unsplash_remote_data_source.dart';
import 'package:kuwot_api/data/models/unsplash_image_model.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockUnsplashDataSource extends Mock implements UnsplashRemoteDataSource {}

void main() {
  late MockUnsplashDataSource mockUnsplashDataSource;

  setUp(() {
    mockUnsplashDataSource = MockUnsplashDataSource();
  });

  group('getRandomImage', () {
    test('should return a random image', () async {
      // arrange
      const tImageModel = UnsplashImageModel(
        id: 'id',
        description: 'description',
        color: 'color',
        blurHash: 'blurHash',
        links: UnsplashLinks(
          self: 'self',
          html: 'html',
        ),
        urls: UnsplashImageUrls(
          raw: 'raw',
          full: 'full',
          regular: 'regular',
          small: 'small',
          thumb: 'thumb',
        ),
        user: UnsplashUser(
          id: 'id',
          username: 'username',
          name: 'name',
          location: null,
          links: UnsplashLinks(
            self: 'self',
            html: 'html',
          ),
          profileImage: UnsplashUserProfileImages(
            small: 'small',
            medium: 'medium',
            large: 'large',
          ),
        ),
      );

      when(() => mockUnsplashDataSource.getRandomImages())
          .thenAnswer((_) async => [tImageModel]);

      // act
      final result = await mockUnsplashDataSource.getRandomImages();

      // assert
      expect(result, [tImageModel]);
      verify(() => mockUnsplashDataSource.getRandomImages()).called(1);
    });
  });
}
