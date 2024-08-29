import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:kuwot_api/domain/repositories/image_repository.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';
import 'package:kuwot_api/injection_container.dart';

Future<HttpServer> run(Handler handler, InternetAddress ip, int port) {
  // injection container
  final ic = InjectionContainer();

  return serve(
    handler.use(
      provider<QuoteRepository>((context) {
        return ic.quoteRepository;
      }),
    ).use(
      provider<ImageRepository>((context) {
        return ic.imageRepository;
      }),
    ),
    ip,
    port,
  );
}
