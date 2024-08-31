import 'dart:convert';

import 'package:kuwot_api/core/data/hosts.dart';
import 'package:kuwot_api/core/network/network.dart';
import 'package:kuwot_api/data/models/unsplash_image_model.dart';
import 'package:kuwot_api/env.dart';

/// A contract for remote data sources of Unsplash.
abstract class UnsplashRemoteDataSource {
  /// Get a random image.
  Future<List<UnsplashImageModel>> getRandomImages({int count = 10});
}

/// An implementation of [UnsplashRemoteDataSource].
class UnsplashRemoteDataSourceImpl implements UnsplashRemoteDataSource {
  /// Creates a new [UnsplashRemoteDataSourceImpl] with the provided [network].
  UnsplashRemoteDataSourceImpl({
    required Env env,
    required Network network,
  })  : _network = network,
        _env = env;

  final Env _env;
  final Network _network;

  @override
  Future<List<UnsplashImageModel>> getRandomImages({int count = 10}) async {
    final uri = Uri(
      scheme: 'https',
      host: unsplashApiHost,
      path: '/photos/random',
      queryParameters: {
        'count': count.toString(),
        'orientation': 'portrait',
      },
    );
    final headers = {
      'Authorization': 'Client-ID ${_env.unsplashAccessKey}',
      'Accept-Version': 'v1',
    };
    final response = await _network.get(uri, headers: headers);
    final data = jsonDecode(response) as List<dynamic>;
    return data
        .map((e) => UnsplashImageModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
