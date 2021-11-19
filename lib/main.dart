import 'package:flutter/material.dart';
import 'package:flutter_interview/screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyFood',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: HomeScreen()
    );
  }
}
