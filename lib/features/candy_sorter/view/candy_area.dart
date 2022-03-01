import 'package:candy_sorter/features/candy_sorter/model/model.dart';
import 'package:candy_sorter/features/candy_sorter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CandyArea extends StatelessWidget {
  const CandyArea({
    Key? key,
    required this.game,
  }) : super(key: key);

  final Game game;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return Stack(
          children: [
            for (var candy in game.candies)
              Positioned(
                top: candy.top,
                left: candy.left,
                child: CandyWidget(
                  candy: candy,
                ),
              ),
          ],
        );
      },
    );
  }
}
