import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:kuwot_api/core/auth/simple_auth.dart';

Handler middleware(Handler handler) {
  // add request logger middleware
  return handler.use(_authCheck).use(requestLogger());
}

Handler _authCheck(Handler handler) {
  return handler.use(
    bearerAuthentication<bool>(
      authenticator: (context, token) async {
        final authenticator = context.read<SimpleAuth>();

        final decryptedToken = authenticator.decryptToken(token);
        if (decryptedToken == null) {
          return null;
        }

        final isTokenValid = authenticator.isTokenValid(decryptedToken);
        return isTokenValid ? true : null;
      },
    ),
  );
}
