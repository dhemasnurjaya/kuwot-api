import 'dart:convert';
import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../routes/index.dart' as route;

class MockQuoteRepository extends Mock implements QuoteRepository {}

class MockRequestContext extends Mock implements RequestContext {}

void main() {
  late MockQuoteRepository mockQuoteRepository;
  late MockRequestContext mockContext;

  setUp(() {
    mockContext = MockRequestContext();
    mockQuoteRepository = MockQuoteRepository();
  });

  group('GET /', () {
    test('response with JSON containing message, date, and quote count".',
        () async {
      // arrange
      when(() => mockContext.read<QuoteRepository>())
          .thenReturn(mockQuoteRepository);
      when(() => mockQuoteRepository.getQuoteCount()).thenReturn(10);

      // act
      final response = route.onRequest(mockContext);

      // assert
      final responseBody =
          jsonDecode(await response.body()) as Map<String, dynamic>;
      expect(response.statusCode, equals(HttpStatus.ok));
      expect(
        responseBody['message'],
        equals('Welcome to Kuwot API!'),
      );
      expect(
        responseBody['quoteCount'],
        equals(10),
      );
      expect(
        DateTime.tryParse(responseBody['time'] as String),
        isA<DateTime>(),
      );
      verify(() => mockContext.read<QuoteRepository>()).called(1);
      verify(() => mockQuoteRepository.getQuoteCount()).called(1);
      verifyNoMoreInteractions(mockQuoteRepository);
    });
  });
}
