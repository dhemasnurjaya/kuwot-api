// ignore_for_file: public_member_api_docs

import 'package:kuwot_api/core/auth/simple_auth.dart';
import 'package:kuwot_api/core/auth/simple_auth_rsa.dart';
import 'package:kuwot_api/core/network/network.dart';
import 'package:kuwot_api/data/data_sources/local/quote_local_data_source.dart';
import 'package:kuwot_api/data/data_sources/remote/unsplash_remote_data_source.dart';
import 'package:kuwot_api/data/quote_database.dart';
import 'package:kuwot_api/data/repositories/image_repository_impl.dart';
import 'package:kuwot_api/data/repositories/quote_repository_impl.dart';
import 'package:kuwot_api/domain/repositories/image_repository.dart';
import 'package:kuwot_api/domain/repositories/quote_repository.dart';
import 'package:kuwot_api/env.dart';

/// A container for dependency injection.
/// Mainly contains the instances of the data sources and repositories
/// in singletons.
class InjectionContainer {
  factory InjectionContainer() {
    return _instance;
  }

  InjectionContainer._internal();
  static final InjectionContainer _instance = InjectionContainer._internal();

  Env? _env;
  Network? _network;
  SimpleAuth? _simpleAuth;
  QuoteDb? _quoteDatabase;
  QuoteLocalDataSource? _quoteLocalDataSource;
  QuoteRepository? _quoteRepository;
  ImageRepository? _imageRepository;

  /// [Env] instance, used for environment variables.
  Env get env => _env ??= EnvImpl();

  /// [Network] instance, used for network operations.
  Network get network => _network ??= NetworkImpl();

  /// [SimpleAuth] instance, used for authentication.
  SimpleAuth get simpleAuth => _simpleAuth ??= SimpleAuthRSA(env: env);

  /// [QuoteDb] instance, interacts with the quote SQLite database.
  QuoteDb get quoteDatabase => _quoteDatabase ??= QuoteDb();

  /// [QuoteLocalDataSource] instance,
  /// accessing the local SQLite database for quotes.
  QuoteLocalDataSource get quoteLocalDataSource {
    quoteDatabase.initialize();
    return _quoteLocalDataSource ??= QuoteLocalDataSourceImpl(
      sqliteDb: quoteDatabase,
    );
  }

  /// [QuoteRepository] instance, using [QuoteLocalDataSource]
  QuoteRepository get quoteRepository {
    final quoteDataCount = quoteLocalDataSource.getQuoteCount();
    final supportedTranslation = quoteLocalDataSource.getTranslations();
    return _quoteRepository ??= QuoteRepositoryImpl(
      quoteDataSource: quoteLocalDataSource,
      quoteDataCount: quoteDataCount,
      supportedTranslation: supportedTranslation,
    );
  }

  /// [ImageRepository] instance using [UnsplashRemoteDataSource].
  ImageRepository get imageRepository =>
      _imageRepository ??= ImageRepositoryImpl(
        unsplashDataSource: UnsplashRemoteDataSourceImpl(
          env: env,
          network: network,
        ),
      );
}
