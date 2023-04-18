class Requirements {
  final String? minimum;
  final String? maximum;

  Requirements({this.minimum, this.maximum});

  factory Requirements.fromJson(Map<String, dynamic> json) {
    return Requirements(maximum: json['maximum'], minimum: json['minimum']);
  }
}
