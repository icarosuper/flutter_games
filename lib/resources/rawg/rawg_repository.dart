import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_games/dto/games_list_dto.dart';
import 'package:flutter_games/dto/get_games_list_params.dart';
import 'package:flutter_games/resources/http_client.dart';

abstract class RawgRepository {
  static Future<GamesListDto> getGamesList(GetGamesListParams params) async {
    final apiKey = dotenv.env['RAWG_API_KEY'] ?? '';
    final baseUrl = dotenv.env['RAWG_API_URL'] ?? '';

    final queryParams = params.toMap();
    queryParams.addAll({'key': apiKey});

    final url = Uri(path: '$baseUrl/games', queryParameters: queryParams);

    final response = await HttpClient().get(url);

    if (response.statusCode == 200) {
      return GamesListDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Falha em buscar jogos');
    }
  }
}
