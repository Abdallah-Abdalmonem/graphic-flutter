import 'package:breaking_bad/screens/my_home.dart';
import 'package:breaking_bad/screens/my_home2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => MyHome(),
        'home_Page2': (context) => MyHomePage()
      },
      initialRoute: 'home_Page2',
    );
  }
}
