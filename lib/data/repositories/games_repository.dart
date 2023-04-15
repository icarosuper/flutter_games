import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_games/domain/interfaces/dto/get_games_list_dto.dart';
import 'package:flutter_games/domain/interfaces/params/get_games_list_params.dart';
import 'package:flutter_games/domain/interfaces/repositories/games_repository_interface.dart';
import 'package:flutter_games/infra/http_client.dart';

class GamesRepository implements GamesRepositoryInterface {
  final _apiKey = dotenv.env['RAWG_API_KEY'] ?? '';
  final _baseUrl = dotenv.env['RAWG_API_URL'] ?? '';

  static final GamesRepository _gamesRepository = GamesRepository._internal();
  factory GamesRepository() => _gamesRepository;
  GamesRepository._internal();

  @override
  Future<GetGamesListDto> getGamesList(GetGamesListParams params) async {
    final url = Uri.parse(
        '$_baseUrl/games?key=$_apiKey&page_size=${params.pageSize}&page=${params.page}');

    final response = await HttpClient().get(url);

    if (response.statusCode == 200) {
      return GetGamesListDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falha em buscar jogos');
    }
  }
}
