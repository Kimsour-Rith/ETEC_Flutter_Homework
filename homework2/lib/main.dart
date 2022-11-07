import 'package:flutter/material.dart';
import 'package:homework2/homepage.dart';

void main() {
  runApp(const MyWidget());
}


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