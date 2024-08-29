import 'package:kuwot_api/core/network/network.dart';
import 'package:kuwot_api/data/data_sources/remote/unsplash_remote_data_source.dart';
import 'package:kuwot_api/data/models/unsplash_image_model.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../_responses/_response.dart';

class MockNetwork extends Mock implements Network {}

void main() {
  late MockNetwork network;
  late UnsplashRemoteDataSource dataSource;

  setUp(() {
    network = MockNetwork();
    dataSource = UnsplashRemoteDataSourceImpl(network: network);

    registerFallbackValue(Uri.parse('https://api.unsplash.com/photos/random'));
  });

  group('getRandomImage', () {
    test(
        'should return a list of unsplash image model when the call to network is successful',
        () async {
      // arrange
      final response = readResponse('unsplash_images');
      when(() => network.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => response);

      // act
      final result = await dataSource.getRandomImage();

      // assert
      expect(result, isA<List<UnsplashImageModel>>());
    });

    test('should throw an exception when the call to network is unsuccessful',
        () {
      // arrange
      when(() => network.get(any(), headers: any(named: 'headers')))
          .thenThrow(Exception());

      // act
      final call = dataSource.getRandomImage;

      // assert
      expect(call(), throwsException);
    });
  });
}
