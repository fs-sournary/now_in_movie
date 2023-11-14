import 'package:shared/di/get_it.dart';
import 'package:shared/mapper/category_movies_response_to_model.dart';

void setupMapperDependencies() {
  getIt.registerLazySingleton(() => const CategoryMoviesResponseToModel());
}
