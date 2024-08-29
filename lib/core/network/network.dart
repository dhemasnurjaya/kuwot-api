import 'dart:convert';
import 'package:http/http.dart' as http;

/// Network interface
abstract class Network {
  /// Get data from uri
  Future<String> get(
    Uri uri, {
    Map<String, String>? headers,
  });

  /// Post data to uri
  Future<String> post(
    Uri uri, {
    Map<String, String>? headers,
    Object? body,
  });
}

/// Network implementation
class NetworkImpl implements Network {
  final _client = http.Client();

  @override
  Future<String> get(
    Uri uri, {
    Map<String, String>? headers,
  }) async {
    final response = await _client.get(
      uri,
      headers: headers,
    );
    return utf8.decode(response.bodyBytes);
  }

  @override
  Future<String> post(
    Uri uri, {
    Map<String, String>? headers,
    Object? body,
  }) async {
    final response = await _client.post(
      uri,
      headers: headers,
      body: body,
    );
    return utf8.decode(response.bodyBytes);
  }
}
