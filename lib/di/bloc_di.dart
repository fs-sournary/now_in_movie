import 'package:now_in_movie/page/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:shared/di/get_it.dart';

void setupBlocDependencies() {
  getIt.registerFactory(() => MovieDetailBloc(loadMovieDetailUseCase: getIt()));
}
