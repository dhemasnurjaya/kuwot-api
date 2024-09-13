import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/quotes/translations.dart' as route;

class MockRequestContext extends Mock implements RequestContext {}

class MockQuoteRepository extends Mock implements QuoteRepository {}

void main() {
  late MockRequestContext mockContext;
  late MockQuoteRepository mockQuoteRepository;

  setUp(() {
    mockContext = MockRequestContext();
    mockQuoteRepository = MockQuoteRepository();
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
        Uri.parse('http://test.com/quotes/translations'),
      ),
    );

    // act
    final response = await route.onRequest(mockContext);

    // assert
    expect(response.statusCode, 405);
    expect(await response.body(), await tExpectedResponse.body());
  });

  test('should return 200 with translations JSON when translations are found',
      () async {
    // arrange
    when(() => mockContext.request).thenReturn(
      Request(
        'GET',
        Uri.parse('http://test.com/quotes/translations'),
      ),
    );

    when(() => mockContext.read<QuoteRepository>())
        .thenReturn(mockQuoteRepository);
    when(() => mockQuoteRepository.getTranslations()).thenReturn([]);

    // act
    final response = await route.onRequest(mockContext);

    // assert
    expect(response.statusCode, 200);
    verify(() => mockQuoteRepository.getTranslations()).called(1);
  });
}
