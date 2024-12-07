import 'package:flutter/material.dart';
import 'package:navigation_codelab/dynamic_screen.dart';
import 'package:navigation_codelab/second_screen.dart';
import 'package:navigation_codelab/third_screen.dart';
import 'first_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Codelab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
        '/third': (context) => ThirdScreen(),
        '/dynamic': (context) => const DynamicScreen(),
      },
      initialRoute: '/',
    );
  }
}
