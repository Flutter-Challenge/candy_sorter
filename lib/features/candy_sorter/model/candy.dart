import 'package:flutter/material.dart';

class Candy {
  Candy({
    required this.color,
    this.top = 0,
    this.left = 0,
  });

  final Color color;
  double top;
  double left;
}
