class Rating {
  final int id;
  final String title;
  final int count;
  final double percent;

  Rating({
    required this.count,
    required this.id,
    required this.percent,
    required this.title,
  });

  factory Rating.fromJson(Map<String, dynamic> json) {
    return Rating(
      count: json['count'],
      id: json['id'],
      title: json['title'],
      percent: json['percent'],
    );
  }
}
