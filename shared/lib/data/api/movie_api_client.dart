import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared/data/api/api_interceptor.dart';
import 'package:shared/data/api/category_movies/category_movies_response.dart';
import 'package:shared/data/api/movie_detail/movie_detail_response.dart';
import 'package:shared/data/api/movie_images/movie_images_response.dart';

class MovieApiClient {
  const MovieApiClient({
    required this.apiInterceptor,
    required this.logInterceptor,
    required this.dio,
  });

  final ApiInterceptor apiInterceptor;
  final PrettyDioLogger logInterceptor;
  final Dio dio;

  void addInterceptor() {
    dio.interceptors.add(apiInterceptor);
    dio.interceptors.add(logInterceptor);
  }

  Future<CategoryMovieResponse> getCategoryMovies({
    required String page,
    required String category,
  }) async {
    final response = await dio.get(
      "movie/$category",
      queryParameters: {"page": Page},
    );
    return CategoryMovieResponse.fromJson(response.data);
  }

  Future<MovieDetailResponse> getMovieDetail(int id) async {
    final response = await dio.get("movie/$id");
    return MovieDetailResponse.fromJson(response.data);
  }

  Future<MovieImagesResponse> getMovieImages(int id) async {
    final response = await dio.get("'tv/$id/images'");
    return MovieImagesResponse.fromJson(response.data);
  }
}
