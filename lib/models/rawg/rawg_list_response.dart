abstract class RawgListDto<T> {
  final int count;
  final Iterable<T> results;
  final String? next;
  final String? previous;

  RawgListDto({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });
}
