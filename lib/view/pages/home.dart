import 'package:flutter/material.dart';
import 'package:flutter_games/view/pages/games_listing.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
        body: GamesListing(),
      );
}
