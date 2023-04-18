class ParentPlatform {
  final int? id;
  final String? name;
  final String? slug;

  ParentPlatform({this.id, this.name, this.slug});

  factory ParentPlatform.fromJson(Map<String, dynamic> json) {
    return ParentPlatform(
      id: json['platform.id'],
      name: json['platform.name'],
      slug: json['platform.slug'],
    );
  }
}
