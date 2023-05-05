/// The base use case class handle tasks asynchronously.
///
/// It takes two properties [P] as the parameter and [R] as the result.
abstract class AsyncUseCase<P, R> {
  const AsyncUseCase();

  Future<R> call(P params);
}
