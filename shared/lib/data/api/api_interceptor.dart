import 'package:dio/dio.dart';
import 'package:shared/data/storage/storage_data_source.dart';

class ApiInterceptor extends Interceptor {
  const ApiInterceptor({required this.storageDataSource});

  final StorageDataSource storageDataSource;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final accessToken = await storageDataSource.getAccessToken();
    if (accessToken.isNotEmpty) {
      options.headers["Authorization"] = accessToken;
    }
    options.queryParameters["api_key"] = "d107661962965284a68ab916fb8bd204";
    super.onRequest(options, handler);
  }
}
