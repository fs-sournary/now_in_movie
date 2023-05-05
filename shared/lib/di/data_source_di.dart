import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared/data/api/api_interceptor.dart';
import 'package:shared/data/api/movie_api_client.dart';
import 'package:shared/data/storage/storage_data_source.dart';
import 'package:shared/di/get_it.dart';

void setupDataSourceDependencies() {
  getIt.registerLazySingleton(() => const FlutterSecureStorage());

  getIt.registerLazySingleton(() => StorageDataSource(storage: getIt()));

  getIt.registerLazySingleton(() => ApiInterceptor(storageDataSource: getIt()));

  getIt.registerLazySingleton(() => PrettyDioLogger());

  getIt.registerLazySingleton(() => Dio(BaseOptions(
        baseUrl: "https://api.themoviedb.org/3/",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
      )));

  getIt.registerLazySingleton<MovieApiClient>(() {
    final client = MovieApiClient(
      apiInterceptor: getIt(),
      logInterceptor: getIt(),
      dio: getIt(),
    );
    client.addInterceptor();
    return client;
  });
}
