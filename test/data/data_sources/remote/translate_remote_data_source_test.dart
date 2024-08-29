import 'package:kuwot_api/core/network/network.dart';
import 'package:kuwot_api/data/data_sources/remote/translate_remote_data_source.dart';
import 'package:kuwot_api/data/models/translate_model.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../../../_responses/_response.dart';

class MockNerwork extends Mock implements Network {}

void main() {
  late MockNerwork network;
  late TranslateRemoteDataSource dataSource;

  setUp(() {
    network = MockNerwork();
    dataSource = TranslateRemoteDataSourceImpl(network: network);

    registerFallbackValue(Uri.parse('https://mockUri.com'));
  });

  group('translate', () {
    test('should return a translation when the call to network is successful',
        () async {
      // arrange
      final response = readResponse('text_translation');
      when(
        () => network.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenAnswer((_) async => response);

      // act
      final result = await dataSource.translate('Hello', 'id');

      // assert
      expect(result, isA<TranslateModel>());
    });

    test('should throw an exception when the call to network is unsuccessful',
        () {
      // arrange
      when(
        () => network.post(
          any(),
          headers: any(named: 'headers'),
          body: any(named: 'body'),
        ),
      ).thenThrow(Exception());

      // act
      final call = dataSource.translate;

      // assert
      expect(() => call('Hello', 'id'), throwsException);
    });
  });
}
