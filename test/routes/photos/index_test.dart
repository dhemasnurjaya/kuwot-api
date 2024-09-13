import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/entities/image.dart';
import 'package:kuwot_api/domain/repositories/image_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/images/index.dart' as route;

class MockRequestContext extends Mock implements RequestContext {}

class MockImageRepository extends Mock implements ImageRepository {}

void main() {
  late MockRequestContext mockContext;
  late MockImageRepository mockImageRepository;

  setUp(() {
    mockContext = MockRequestContext();
    mockImageRepository = MockImageRepository();
  });

  test('should return 405 when request method is not GET', () async {
    // arrange
    final tExpectedResponse = Response.json(
      statusCode: 405,
      body: const ErrorResponse(
        message: 'Method now allowed',
        code: 405,
      ).toJson(),
    );
    when(() => mockContext.request).thenReturn(
      Request(
        'POST',
        Uri.parse('http://test.com/images'),
      ),
    );

    // act
    final response = await route.onRequest(mockContext);

    // assert
    expect(response.statusCode, 405);
    expect(await response.body(), await tExpectedResponse.body());
  });

  test('should return 200 with image JSON when image is found', () async {
    // arrange
    const tImage = Image(
      id: '1',
      description: 'test image',
      authorName: 'test author',
      url: 'http://test.com/image.jpg',
      authorBio: 'test bio',
      authorIsForHire: true,
      authorLocation: 'test location',
      authorTotalLikes: 100,
      authorTotalPhotos: 100,
      authorProfileImageUrl: 'http://test.com/author.jpg',
      authorUrl: 'http://test.com/author',
      blurHash: 'test_blur_hash',
      color: '#000000',
      originUrl: 'http://test.com/origin.jpg',
    );

    when(() => mockContext.request).thenReturn(
      Request(
        'GET',
        Uri.parse('http://test.com/images/1'),
      ),
    );
    when(() => mockContext.read<ImageRepository>())
        .thenReturn(mockImageRepository);
    when(() => mockImageRepository.getRandomImages())
        .thenAnswer((_) async => [tImage]);

    // act
    final response = await route.onRequest(mockContext);

    // assert
    final responseBody = jsonDecode(await response.body()) as List;
    final jsonBody = responseBody.first as Map<String, dynamic>;
    expect(response.statusCode, 200);
    expect(Image.fromJson(jsonBody), tImage);
    verify(() => mockContext.read<ImageRepository>()).called(1);
    verify(() => mockImageRepository.getRandomImages()).called(1);
    verifyNoMoreInteractions(mockImageRepository);
  });
}
