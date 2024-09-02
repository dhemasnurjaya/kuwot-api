import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:kuwot_api/core/auth/simple_auth.dart';
import 'package:kuwot_api/env.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:uuid/validation.dart';

/// Simple auth implementation using RSA.
/// Client will send a base64 UUID encrypted with public key, then the server will
/// decrypt it with private key and check if the UUID is valid.
class SimpleAuthRSA implements SimpleAuth {
  /// Creates a new [SimpleAuthRSA] with the provided [env].
  SimpleAuthRSA({required Env env}) : _env = env;

  final Env _env;

  @override
  String? decryptToken(String token) {
    // read private key
    final keyBytes = base64.decode(_env.authPrivateKey);
    final keyParser = RSAKeyParser();
    final rsaPrivateKey =
        keyParser.parse(utf8.decode(keyBytes)) as RSAPrivateKey;

    // decrypt token
    final encrypter = Encrypter(RSA(privateKey: rsaPrivateKey));
    try {
      final decryptedToken = encrypter.decrypt64(token);
      return decryptedToken;
    } catch (e) {
      return null;
    }
  }

  @override
  bool isTokenValid(String decryptedToken) {
    // check if token is a valid UUID
    return UuidValidation.isValidUUID(fromString: decryptedToken);
  }
}
