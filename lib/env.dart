// ignore_for_file: public_member_api_docs

import 'package:envied/envied.dart';

part 'env.g.dart';

abstract class Env {
  String get unsplashAccessKey;
  String get authPrivateKey;
}

@Envied(path: '.env')
class EnvImpl implements Env {
  @EnviedField(varName: 'UNSPLASH_ACCESS_KEY', obfuscate: true)
  static final String _unsplashAccessKey = _EnvImpl._unsplashAccessKey;

  @EnviedField(varName: 'AUTH_PRIVATE_KEY', obfuscate: true)
  static final String _authPrivateKey = _EnvImpl._authPrivateKey;

  @override
  String get unsplashAccessKey => _unsplashAccessKey;

  @override
  String get authPrivateKey => _authPrivateKey;
}
