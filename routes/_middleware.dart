import 'package:dart_frog/dart_frog.dart';
import 'package:dart_frog_auth/dart_frog_auth.dart';
import 'package:kuwot_api/core/auth/simple_auth.dart';

import 'package:shelf_cors_headers/shelf_cors_headers.dart' as shelf;

Handler middleware(Handler handler) {
  // chain the middlewares
  return handler.use(_authCheck).use(requestLogger()).use(_cors);
}

Handler _cors(Handler handler) {
  return handler.use(
    fromShelfMiddleware(
      shelf.corsHeaders(
        headers: {
          shelf.ACCESS_CONTROL_ALLOW_ORIGIN: 'https://kuwot.dhemasnurjaya.com',
        },
      ),
    ),
  );
}

Handler _authCheck(Handler handler) {
  const appliedRoutes = [
    '/quotes',
    '/images',
  ];

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
      applies: (RequestContext context) async {
        return appliedRoutes.any((e) => context.request.uri.path.startsWith(e));
      },
    ),
  );
}
