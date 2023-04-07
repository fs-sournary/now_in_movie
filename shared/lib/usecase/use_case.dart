/// The base use case class handles tasks synchronously.
///
/// It takes two properties [P] as the parameter and [R] as the result.
abstract class UseCase<P, R> {
  const UseCase();

  R call(P params);
}
