import 'package:flutter/material.dart';
import 'package:practice_1/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    

    return MaterialApp(
      home: HomePage(),
    );
  }
}
