import 'package:flutter/material.dart';
import 'package:flutter_games/domain/entities/game.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 15,
        color: Colors.black,
        child: Column(
          children: [
            Text(game.name ?? 'Jogo',
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
        ));
  }
}
