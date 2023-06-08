abstract class Mapper<F, T> {
  T map(F from);
}

abstract class IndexedMapper<F, T> {
  T map(int index, F from);
}
