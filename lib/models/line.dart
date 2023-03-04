import 'dart:math';

import 'package:breaking_bad/constants.dart';
import 'package:flutter/material.dart';

class Line {
  List<Offset> li1 = [];
  DrowAixes drowAixes = DrowAixes();
  List<Offset> li3 = [];

  void DDA(double x1, double y1, double x2, double y2) {
    // x1 = 10;
    // y1 = 10;

    // x2 = 100;
    // y2 = 100;

    double dx = x2 - x1;
    double dy = y2 - y1;
    double x, y;
    x = x1;
    y = y1;
    double steps = max(dx.abs(), dy.abs());
    double xinc = dx / steps, yinc = dy / steps;

    for (int i = 0; i <= steps; i++) {
      //to work should y be -y
      double y_temp = y1 * -1;

      li1.add(Offset(200 + (x).toDouble(), 200 + (y).toDouble() * -1));

      x += xinc;
      y += yinc;
    }
    drowAixes.drowAixes();

    li3 = drowAixes.li2 + li1;
  }
}
