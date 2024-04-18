import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:mankai/game/pixel_adventure.dart';

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    PixelAdventure game = PixelAdventure();
    return GameWidget(game: game);
  }
}