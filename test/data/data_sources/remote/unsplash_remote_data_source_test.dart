import 'package:kuwot_api/core/network/network.dart';
import 'package:kuwot_api/data/data_sources/remote/unsplash_remote_data_source.dart';
import 'package:kuwot_api/data/models/unsplash_image_model.dart';
import 'package:kuwot_api/env.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../_responses/_response.dart';

class MockEnv extends Mock implements Env {}

class MockNetwork extends Mock implements Network {}

void main() {
  late MockEnv env;
  late MockNetwork network;
  late UnsplashRemoteDataSource dataSource;

  setUp(() {
    env = MockEnv();
    network = MockNetwork();
    dataSource = UnsplashRemoteDataSourceImpl(
      env: env,
      network: network,
    );

    registerFallbackValue(Uri.parse('https://api.unsplash.com/photos/random'));
  });

  group('getRandomImage', () {
    test(
        'should return a list of unsplash image model when the call to network is successful',
        () async {
      // arrange
      final response = readResponse('unsplash_images');

      when(() => env.unsplashAccessKey).thenReturn('test_access_key');
      when(() => network.get(any(), headers: any(named: 'headers')))
          .thenAnswer((_) async => response);

      // act
      final result = await dataSource.getRandomImages();

      // assert
      expect(result, isA<List<UnsplashImageModel>>());
    });

    test('should throw an exception when the call to network is unsuccessful',
        () {
      // arrange
      when(() => env.unsplashAccessKey).thenReturn('test_access_key');
      when(() => network.get(any(), headers: any(named: 'headers')))
          .thenThrow(Exception());

      // act
      final call = dataSource.getRandomImages;

      // assert
      expect(call(), throwsException);
    });
  });
}
