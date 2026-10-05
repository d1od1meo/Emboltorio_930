import 'package:emboltorio_930/screens/activity1_screen.dart';
import 'package:emboltorio_930/screens/main_screen.dart';
import 'package:emboltorio_930/screens/prelim.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello World',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
