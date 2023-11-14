import 'package:shared/data/api/category_movies/category_movies_response.dart';
import 'package:shared/mapper/mapper.dart';
import 'package:shared/model/category_movies.dart';

class CategoryMoviesResponseToModel
    implements Mapper<CategoryMoviesResponse, CategoryMovies> {
  const CategoryMoviesResponseToModel();

  @override
  CategoryMovies map(CategoryMoviesResponse from) {
    return CategoryMovies(
      page: from.page ?? 0,
      results: (from.results ?? [])
          .map((e) => CategoryMovie.fromResponse(e))
          .toList(),
      totalPages: from.totalPages ?? 0,
      totalResults: from.totalResults ?? 0,
    );
  }
}
