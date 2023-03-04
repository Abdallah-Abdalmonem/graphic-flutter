import 'dart:ui';

import 'package:breaking_bad/components/custom_text_field.dart';
import 'package:breaking_bad/models/circle.dart';
import 'package:breaking_bad/models/line.dart';
import 'package:breaking_bad/models/x_axis,yaxis.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textFieldControllerX = TextEditingController();
  final textFieldControllerX1 = TextEditingController();
  final textFieldControllerY = TextEditingController();
  final textFieldControllerY1 = TextEditingController();
  Canvas? c;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('paint', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
      ),
      body: ListView(children: <Widget>[
        Container(
          color: Colors.grey[400],
          width: 400,
          height: 400,
          child: CustomPaint(
            painter: OpenPainter(),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomTextFiled(
                TextEditingController: textFieldControllerX, label: 'X'),
            CustomTextFiled(
                TextEditingController: textFieldControllerX1, label: 'Y'),
            CustomTextFiled(
                TextEditingController: textFieldControllerY, label: 'X1'),
            CustomTextFiled(
                TextEditingController: textFieldControllerY1, label: 'Y1'),
            ElevatedButton(onPressed: () {}, child: Text('sda')),
          ],
        ),
      ]),
    );
  }
}

class OpenPainter extends CustomPainter {
  Line line = Line();
  Circle circle = Circle();
  DrowAixes drowAixes = DrowAixes();
  @override
  void paint(Canvas canvas, Size size) {
    // function of dda
    line.DDA(0, 0, 100, 100);
    circle.circleMidPoint(50, 50, 90);
    // drowAixes.drowAixes();
    var paint1 = Paint()
      ..color = Color.fromARGB(255, 60, 49, 144)
      ..strokeWidth = 5;
    //list of points
    var points = circle.li3;
    //draw points on canvas
    canvas.drawPoints(PointMode.points, points, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
