extension IterableExtension<E> on Iterable<E> {
  List<E> sortedBy<T extends Comparable<T>>(T Function(E) selector,
      {bool descending = false}) {
    var sortedList = toList()
      ..sort((a, b) => descending
          ? selector(b).compareTo(selector(a))
          : selector(a).compareTo(selector(b)));
    return sortedList;
  }
}
