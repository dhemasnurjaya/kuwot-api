// ignore_for_file: public_member_api_docs

import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'UNSPLASH_ACCESS_KEY', obfuscate: true)
  static final String unsplashAccessKey = _Env.unsplashAccessKey;
}
