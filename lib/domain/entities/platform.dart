class Platform {
  final int id;
  final int? yearStart;
  final int? yearEnd;
  final int gamesCount;
  final String name;
  final String slug;
  final String? backgroundImage;
  final String? image;

  Platform({
    required this.id,
    this.yearStart,
    this.yearEnd,
    required this.gamesCount,
    required this.name,
    required this.slug,
    this.backgroundImage,
    this.image,
  });

  factory Platform.fromJson(Map<String, dynamic> json) {
    return Platform(
      id: json['id'],
      gamesCount: json['games_count'],
      name: json['name'],
      slug: json['slug'],
      image: json['image'],
      backgroundImage: json['image_background'],
      yearEnd: json['year_end'],
      yearStart: json['year_start'],
    );
  }
}
