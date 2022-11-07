import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WaveNavbar extends StatelessWidget {
  const WaveNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperOne(),
          child: Container(
            // height: MediaQuery.of(context).size.height / 6,
            height: 130,
            color: const Color.fromARGB(255, 14, 173, 242),
          ),
        ),
        ClipPath(
          clipper: WaveClipperTwo(),
          child: Container(
            // height: MediaQuery.of(context).size.height / 7,
            height: 120,
            color: const Color.fromARGB(201, 3, 149, 254),
          ),
        ),
      ],
    );
  }
}
