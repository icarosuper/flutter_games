class Genre {
  final int id;
  final int gamesCount;
  final String name;
  final String slug;
  final String backgroundImage;

  Genre({
    required this.id,
    required this.gamesCount,
    required this.name,
    required this.slug,
    required this.backgroundImage,
  });

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json['id'],
      gamesCount: json['games_count'],
      name: json['name'],
      slug: json['slug'],
      backgroundImage: json['image_background'],
    );
  }
}
