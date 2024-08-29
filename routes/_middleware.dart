import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  // add request logger middleware
  return handler.use(requestLogger());
}
