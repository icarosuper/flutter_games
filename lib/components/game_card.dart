import 'package:flutter/material.dart';
import 'package:flutter_games/models/rawg/game.dart';

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(child: Text(game.name));
  }
}
