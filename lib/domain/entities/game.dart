class Game {
  final double rating;
  final int? id;
  final String? slug;
  final String? name;
  final DateTime? released;
  final bool? toBeAnnounced;
  final Uri? backgroundImage;
  final int? ratingTop;
  final int? ratingsCount;
  final int? reviewsTextCount;
  final int? added;
  final int? metacritic;
  final int? playTime;
  final int? suggestionsCount;
  final DateTime? updated;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  // final Iterable<Rating>? ratings;
  // final AddedByStatus? addedByStatus;
  // ratings
  // platforms
  // parentPlatforms
  // genres
  // stores
  // tags
  // esrbRating
  // shortScreenshots

  Game({
    required this.rating,
    this.id,
    this.slug,
    this.name,
    this.released,
    this.toBeAnnounced,
    this.backgroundImage,
    this.ratingsCount,
    this.metacritic,
    this.updated,
    this.reviewsCount,
    this.playTime,
    this.ratingTop,
    this.added,
    this.dominantColor,
    this.reviewsTextCount,
    this.saturatedColor,
    this.suggestionsCount,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      rating: json['rating'],
      id: json['id'],
      slug: json['slug'],
      name: json['name'],
      released: DateTime.tryParse(json['released']),
      toBeAnnounced: json['tba'],
      backgroundImage: Uri.tryParse(json['background_image']),
      ratingsCount: json['ratings_count'],
      metacritic: json['metacritic'],
      updated: DateTime.tryParse(json['updated']),
      reviewsCount: json['reviews_count'],
      added: json['added'],
      playTime: json['playtime'],
      ratingTop: json['rating_top'],
      reviewsTextCount: json['reviews_text_count'],
      suggestionsCount: json['suggestions_count'],
      dominantColor: json['dominant_color'],
      saturatedColor: json['saturated_color'],
    );
  }
}
