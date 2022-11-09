import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WaveBottom extends StatelessWidget {
  const WaveBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperOne(reverse: true),
          child: Container(
            height: MediaQuery.of(context).size.height / 7,
            color: const Color.fromARGB(255, 14, 173, 242),
          ),
        ),
        ClipPath(
          clipper: WaveClipperTwo(reverse: true),
          child: Container(
            height: MediaQuery.of(context).size.height / 7,
            color: const Color.fromARGB(201, 3, 149, 254),
          ),
        ),
      ],
    );
  }
}
