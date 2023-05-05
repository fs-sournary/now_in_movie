import 'package:shared/data/api/movie_api_client.dart';
import 'package:shared/model/movie_detail.dart';
import 'package:shared/usecase/async_use_case.dart';

class LoadMovieDetailUseCase extends AsyncUseCase<int, MovieDetail> {
  const LoadMovieDetailUseCase({required this.client});

  final MovieApiClient client;

  @override
  Future<MovieDetail> call(int params) async {
    final response = await client.getMovieDetail(params);
    return MovieDetail.fromResponse(response);
  }
}
