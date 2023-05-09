import 'package:shared/di/get_it.dart';
import 'package:shared/usecase/movie/load_movie_detail_use_case.dart';
import 'package:shared/usecase/setting/load_theme_mode_use_case.dart';
import 'package:shared/usecase/setting/save_theme_mode_use_case.dart';

void setupUseCaseDependencies() {
  getIt.registerFactory(() => LoadMovieDetailUseCase(client: getIt()));

  getIt.registerFactory(() => SaveThemeModeUseCase(getIt()));

  getIt.registerFactory(() => LoadThemeModeUseCase(getIt()));
}
