import 'package:flutter/material.dart';
import 'package:flutter_games/data/repositories/games_repository.dart';
import 'package:flutter_games/data/use_cases/games/get_games_list_usecase.dart';
import 'package:flutter_games/domain/entities/game.dart';
import 'package:flutter_games/domain/interfaces/params/get_games_list_params.dart';
import 'package:flutter_games/view/components/game_card.dart';

class GamesListing extends StatefulWidget {
  const GamesListing({super.key});

  @override
  createState() => _GamesList();
}

class _GamesList extends State<GamesListing> {
  int _currentPage = 1;
  List<Game> _games = [];

  Future<void> _getNewPage(int page) async {
    final response = await GetGamesListUsecase().execute(
        GamesRepository(), GetGamesListParams(page: page, pageSize: 20));

    setState(() {
      _games = response;
      _currentPage = page;
    });
  }

  @override
  void initState() {
    _getNewPage(1);
    super.initState();
  }

  @override
  build(BuildContext context) {
    return SafeArea(
        minimum:
            const EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: _games.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GameCard(_games[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(height: 8),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ElevatedButton(
                    onPressed: () => _getNewPage(_currentPage - 1),
                    child: const Text('Voltar')),
                ElevatedButton(
                    onPressed: () => _getNewPage(_currentPage + 1),
                    child: const Text('Avançar')),
              ]),
            ]));
  }
}
