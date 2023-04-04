class Game {
  final int id;
  final String slug;
  final String name;
  final String released;
  final bool toBeAnnounced;
  final String backgroundImage;
  final double rating;
  // final double ratingTop;
  // final Iterable<Rating> ratings;
  final int ratingsCount;
  // final int reviewsTextCount;
  // final int added;
  // final AddedByStatus addedByStatus;
  final int metacritic;
  // final int playTime;
  // final int suggestionsCount;
  final String updated;
  final int reviewsCount;
  // final String saturatedColor;
  // final String dominantColor;

  Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.released,
    required this.toBeAnnounced,
    required this.backgroundImage,
    required this.rating,
    required this.ratingsCount,
    required this.metacritic,
    required this.updated,
    required this.reviewsCount,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      slug: json['slug'],
      name: json['name'],
      released: json['released'],
      toBeAnnounced: json['tba'],
      backgroundImage: json['background_image'],
      rating: json['rating'],
      ratingsCount: json['ratings_count'],
      metacritic: json['metacritic'],
      updated: json['updated'],
      reviewsCount: json['reviews_count'],
    );
  }
}
