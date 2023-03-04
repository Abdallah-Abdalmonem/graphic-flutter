import 'dart:math';

import 'package:breaking_bad/constants.dart';
import 'package:flutter/material.dart';

class Circle {
  List<Offset> li1 = [];
  DrowAixes drowAixes = DrowAixes();
  List<Offset> li3 = [];

  void circleMidPoint(int r1, int x1, int x2) {
    // x1 = 10;
    // y1 = 10;

    // x2 = 100;
    // y2 = 100;

    int r = r1;
    int xcenter = x1;
    int Ycenter = x2;
    double p = 5 / 4 - r;
    int y = r, x = 0;

    while (y > x) {
      if (p < 0) {
        x += 1;
        p += 2 * x + 1;
      } else {
        x += 1;
        //it must be y+=1
        y -= 1;
        p += 2 * x - 2 * y + 1;
      }
      // li1.add( x,  y,  xcenter,  Ycenter);
      // li1.add(Offset(200 + (x).toDouble(), 200 + (y).toDouble()));
      DrowPixel(x, y, xcenter, Ycenter);
    }
    drowAixes.drowAixes();

    li3 = drowAixes.li2 + li1;
  }

  void DrowPixel(int x, int y1, int xcenter, int Ycenter) {
    int y = -y1;
    //الربع الاول
    li1.add(Offset((x + 400 / 2 + xcenter), (y + 400 / 2 - Ycenter)));
    li1.add(Offset((y + 400 / 2 + xcenter), (x + 400 / 2 - Ycenter)));
    //الربع الثاني
    li1.add(Offset((400 / 2 - x + xcenter), (y + 400 / 2 - Ycenter)));
    li1.add(Offset((400 / 2 - y + xcenter), (x + 400 / 2 - Ycenter)));
    //الربع الثالث
    li1.add(Offset((x + 400 / 2 + xcenter), (400 / 2 - y - Ycenter)));
    li1.add(Offset((y + 400 / 2 + xcenter), (400 / 2 - x - Ycenter)));
    //الربع الربع
    li1.add(Offset((400 / 2 - x + xcenter), (-y + 400 / 2 - Ycenter)));
    li1.add(Offset((400 / 2 - y + xcenter), (-x + 400 / 2 - Ycenter)));
  }
}
