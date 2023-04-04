import 'package:flutter_games/models/rawg/game.dart';
import 'package:flutter_games/models/rawg/rawg_list_response.dart';

class GamesListDto extends RawgListDto<Game> {
  GamesListDto({
    required super.count,
    required super.results,
    super.next,
    super.previous,
  });

  factory GamesListDto.fromJson(Map<String, dynamic> json) {
    final games = json['results'] as List;

    return GamesListDto(
      count: json['count'],
      results: List<Game>.from(games.map((game) => Game.fromJson(game))),
      next: json['next'],
      previous: json['previous'],
    );
  }
}
