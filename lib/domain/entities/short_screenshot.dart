class ShortScreenshot {
  final int id;
  final String image;

  ShortScreenshot({required this.id, required this.image});

  factory ShortScreenshot.fromJson(Map<String, dynamic> json) {
    return ShortScreenshot(id: json['id'], image: json['image']);
  }
}
