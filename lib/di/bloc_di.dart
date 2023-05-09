import 'package:now_in_movie/page/movie_detail/bloc/movie_detail_bloc.dart';
import 'package:now_in_movie/page/theme/theme_bloc.dart';
import 'package:shared/di/get_it.dart';

void setupBlocDependencies() {
  getIt.registerFactory(() => MovieDetailBloc(loadMovieDetailUseCase: getIt()));

  getIt.registerFactory(() => ThemeBloc(
        loadThemeModeUseCase: getIt(),
        saveThemeModeUseCase: getIt(),
      ));
}
