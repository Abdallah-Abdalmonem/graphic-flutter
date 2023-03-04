import 'package:flutter/material.dart';

class DrowAixes {
  List<Offset> li2 = [];

  void drowAixes() {
    //x  axies drow
    for (int i = 0; i < 400; i += 4) {
      li2.add(Offset((i.toDouble()), (400 / 2).toDouble()));
    }
    //y axies drow
    for (int i = 400; i > 0; i -= 4) {
      li2.add(Offset((400 / 2), ((400 - i).abs().toDouble())));
    }
  }
}
