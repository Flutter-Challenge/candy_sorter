import 'dart:math';

import 'package:candy_sorter/features/candy_sorter/model/model.dart';
import 'package:flutter/material.dart';

class Game {
  Game({
    required this.colors,
    required this.numberOfCandies,
    this.gameArea = const Size(0, 0),
  }) {
    _fillCandies();
  }

  final int numberOfCandies;

  final List<Color> colors;
  final List<Candy> candies = [];
  final Size gameArea;

  void removeCandy(Candy candy) {
    candies.remove(candy);
  }

  void _fillCandies() {
    final random = Random();
    for (var i = 0; i < numberOfCandies; i++) {
      int nextIndex = random.nextInt(colors.length);
      candies.add(
        Candy(
          color: colors[nextIndex],
          top: random.nextInt(gameArea.height.toInt() - 120).toDouble(),
          left: random.nextInt(gameArea.width.toInt() - 100).toDouble(),
        ),
      );
    }
  }
}
