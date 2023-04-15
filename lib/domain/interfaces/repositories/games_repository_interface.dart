import 'package:flutter_games/domain/interfaces/dto/get_games_list_dto.dart';
import 'package:flutter_games/domain/interfaces/params/get_games_list_params.dart';

abstract class GamesRepositoryInterface {
  Future<GetGamesListDto> getGamesList(GetGamesListParams params);
}
