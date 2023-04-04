import 'package:flutter/material.dart';
import 'package:flutter_games/components/game_card.dart';
import 'package:flutter_games/dto/games_list_dto.dart';
import 'package:flutter_games/dto/get_games_list_params.dart';
import 'package:flutter_games/models/rawg/game.dart';
import 'package:flutter_games/resources/rawg/rawg_repository.dart';

class GamesPage extends StatefulWidget {
  const GamesPage({super.key});

  @override
  createState() => _GamesList();
}

class _GamesList extends State<GamesPage> {
  Future<GamesListDto> _getNewPage() async {
    return await RawgRepository.getGamesList(GetGamesListParams());
  }

  List<Widget> _getGameCardList(Iterable<Game> games) {
    return List.from(games.map((game) => GameCard(game: game)));
  }

  @override
  build(BuildContext context) {
    return FutureBuilder(
      future: _getNewPage(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            GridView.count(
                crossAxisCount: 2,
                children: _getGameCardList(snapshot.data!.results)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ElevatedButton(onPressed: () => {}, child: const Text('Voltar')),
              ElevatedButton(onPressed: () => {}, child: const Text('Avançar')),
            ]),
          ],
        );
      },
    );
  }
}
