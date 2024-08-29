import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/core/error/error_response.dart';
import 'package:kuwot_api/domain/entities/quote.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../routes/quotes/index.dart' as route;

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
        Uri.parse('http://test.com/quotes'),
      ),
    );

    // act
    final response = await route.onRequest(mockContext);

    // assert
    expect(response.statusCode, 405);
    expect(await response.body(), await tExpectedResponse.body());
  });

  test('should return 200 with quote JSON when quote is found', () async {
    // arrange
    const tQuote = Quote(
      id: 1,
      text: 'test quote',
      author: 'test author',
    );

    when(() => mockContext.request).thenReturn(
      Request(
        'GET',
        Uri.parse('http://test.com/quotes/1'),
      ),
    );
    when(() => mockContext.read<QuoteRepository>())
        .thenReturn(mockQuoteRepository);
    when(() => mockQuoteRepository.getRandomQuote())
        .thenAnswer((_) async => tQuote);

    // act
    final response = await route.onRequest(mockContext);

    // assert
    final jsonBody = jsonDecode(await response.body()) as Map<String, dynamic>;
    expect(response.statusCode, 200);
    expect(Quote.fromJson(jsonBody), tQuote);
  });
}
