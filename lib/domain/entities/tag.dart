class Tag {
  final int id;
  final int gamesCount;
  final String name;
  final String slug;
  final String language;
  final String backgroundImage;

  Tag({
    required this.id,
    required this.gamesCount,
    required this.name,
    required this.slug,
    required this.language,
    required this.backgroundImage,
  });

  factory Tag.fromJson(Map<String, dynamic> json) {
    return Tag(
      id: json['id'],
      gamesCount: json['games_count'],
      name: json['name'],
      slug: json['slug'],
      language: json['language'],
      backgroundImage: json['image_background'],
    );
  }
}
