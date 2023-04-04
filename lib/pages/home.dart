import 'package:flutter/material.dart';
import 'package:flutter_games/pages/games_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Games')),
        body: GamesPage(),
      );
}
