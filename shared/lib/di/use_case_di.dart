import 'package:shared/di/get_it.dart';
import 'package:shared/usecase/movie/load_movie_detail_use_case.dart';

void setupUseCaseDependencies() {
  getIt.registerFactory(() => LoadMovieDetailUseCase(client: getIt()));
}
