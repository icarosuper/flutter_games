import 'package:flutter_games/domain/entities/game.dart';
import 'package:flutter_games/domain/interfaces/params/get_games_list_params.dart';
import 'package:flutter_games/domain/interfaces/repositories/games_repository_interface.dart';

class GetGamesListUsecase {
  Future<List<Game>> execute(
      GamesRepositoryInterface repository, GetGamesListParams params) async {
    try {
      final response = await repository.getGamesList(params);
      return response.results;
    } catch (error) {
      return [];
    }
  }
}
