import 'dart:convert';

import 'package:kuwot_api/core/data/hosts.dart';
import 'package:kuwot_api/core/network/network.dart';
import 'package:kuwot_api/data/models/translate_model.dart';

/// A contract for remote data sources of translation.
abstract class TranslateRemoteDataSource {
  /// Translate [text] to [langId].
  ///
  /// [text] is the text to be translated.
  /// [langId] is the language code of the target language,
  /// ex. 'en' for English.
  ///
  /// Returns a [TranslateModel] of the translated text.
  Future<TranslateModel> translate(String text, String langId);
}

/// An implementation of [TranslateRemoteDataSource].
class TranslateRemoteDataSourceImpl implements TranslateRemoteDataSource {
  /// Creates a new [TranslateRemoteDataSourceImpl] with the provided [network].
  TranslateRemoteDataSourceImpl({
    required Network network,
  }) : _network = network;

  final Network _network;

  @override
  Future<TranslateModel> translate(String text, String langId) async {
    final uri = Uri(
      scheme: 'https',
      host: libretranslateApiHost,
      path: 'translate',
    );
    final headers = {
      'Content-Type': 'application/json',
    };
    final body = jsonEncode({
      'q': text,
      'source': 'auto',
      'target': langId,
    });
    final response = await _network.post(
      uri,
      headers: headers,
      body: body,
    );
    final jsonResponse = jsonDecode(response) as Map<String, dynamic>;
    return TranslateModel.fromJson(jsonResponse);
  }
}
