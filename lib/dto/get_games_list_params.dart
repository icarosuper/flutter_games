class GetGamesListParams {
  final int page;
  final int pageSize;
  final String? search;
  final String? platforms;
  final String? developers;
  final String? publishers;
  final String? genres;
  final String? tags;
  final String? metacritic;
  final String? ordering;

  GetGamesListParams({
    this.page = 1,
    this.pageSize = 10,
    this.search,
    this.platforms,
    this.developers,
    this.publishers,
    this.genres,
    this.tags,
    this.metacritic,
    this.ordering,
  });

  Map<String, dynamic> toMap() => {
        'page_size': pageSize,
        'search': search,
        'platforms': platforms,
        'developers': developers,
        'publishers': publishers,
        'genres': genres,
        'tags': tags,
        'metacritic': metacritic,
        'ordering': ordering,
      };
}
