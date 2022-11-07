import 'package:flutter/material.dart';
import 'package:home_work1/homepage.dart';


/// main
void main(List<String> args) {
  runApp(const MyWidget());
}

// materialApp
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}