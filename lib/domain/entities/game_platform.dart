import 'package:flutter_games/domain/entities/platform.dart';
import 'package:flutter_games/domain/entities/requirements.dart';

class GamePlatform {
  final DateTime? releasedAt;
  final Requirements? requirements;
  final Platform platform;

  GamePlatform({this.releasedAt, this.requirements, required this.platform});

  factory GamePlatform.fromJson(Map<String, dynamic> json) {
    return GamePlatform(
      platform: Platform.fromJson(json['platform']),
      releasedAt: json['released_at'] != null
          ? DateTime.tryParse(json['released_at'])
          : null,
      requirements: json['requirements_en'] != null
          ? Requirements.fromJson(json['requirements_en'])
          : null,
    );
  }
}
