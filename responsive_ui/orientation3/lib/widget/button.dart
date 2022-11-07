import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    double wSize =  MediaQuery.of(context).size.width;
    return Container(
      // width: MediaQuery.of(context).size.width / 2.5,
      width: wSize >= 1 && wSize <= 400 ? 150.0 : 170.0,
      height: 37.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: const Color.fromARGB(255, 52, 51, 51),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.youtube,
              size: 20,
              color: Color.fromARGB(255, 214, 209, 209),
            ),
          ),
          const Text(
            "See all Videos",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromARGB(255, 238, 236, 236),
              fontFamily: 'Poppin',
            ),
          )
        ],
      ),
    );
  }
}
