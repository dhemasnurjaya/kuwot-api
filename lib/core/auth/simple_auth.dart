/// Simple auth without user data.
abstract class SimpleAuth {
  /// Decrypt [token].
  /// Returns null if [token] cannot be decrypted.
  String? decryptToken(String token);

  /// Check if [decryptedToken] is valid.
  bool isTokenValid(String decryptedToken);

  /// Check if [issuedAt] is expired.
  bool isTokenExpired(int issuedAt);
}
