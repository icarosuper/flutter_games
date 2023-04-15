import 'package:flutter/material.dart';
import 'package:flutter_games/domain/entities/game.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard(this.game, {super.key});

  @override
  Widget build(BuildContext context) {
    void gotToGamePage() {
      // toDo Adicionar página do jogo
    }

    return InkWell(
        onTap: gotToGamePage,
        child: Card(
            elevation: 15,
            color: Colors.black,
            clipBehavior: Clip.hardEdge,
            child: Column(
              children: [
                if (game.backgroundImage != null)
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: NetworkImage(game.backgroundImage!),
                    )),
                  ),
                if (game.name != null)
                  Text(game.name!,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                Text('${game.rating}/5',
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18)),
              ],
            )));
  }
}
