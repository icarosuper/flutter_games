import 'package:flutter_games/domain/entities/game.dart';

class GetGamesListDto {
  final int count;
  final List<Game> results;
  final String? next;
  final String? previous;

  GetGamesListDto({
    required this.count,
    required this.results,
    this.next,
    this.previous,
  });

  factory GetGamesListDto.fromJson(Map<String, dynamic> json) {
    return GetGamesListDto(
      count: json['count'],
      results: List<Game>.from(
          json['results'].map((result) => Game.fromJson(result))),
      next: json['next'],
      previous: json['previous'],
    );
  }
}
