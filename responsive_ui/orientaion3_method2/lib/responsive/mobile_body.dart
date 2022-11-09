import 'package:flutter/material.dart';
import '../widget/button.dart';
import '../widget/wave_bottom.dart';
import '../widget/wave_navbar.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              const WaveNavbar(),
              Center(
                  child: Container(
                margin: const EdgeInsets.only(top: 70),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bgImg.png"))),
              ))
            ],
          ),
          const SizedBox(
            height: 35.0,
          ),
          const Text(
            "Easy Approach",
            style: TextStyle(
              fontSize: 30.0,
              color: Color.fromARGB(255, 106, 212, 218),
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.50,
            // width: MediaQuery.of(context).size.width * 0.25 ,
            child: Text(
              "Easy Approach makes it easy for everyone to dessiminate knowledge, and making difficult problems easy to solve.",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 13,
                  letterSpacing: 0.7,
                  fontFamily: 'Poppin',
                  color: Colors.grey[600]),
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          const Button(),
          Expanded(child: Container()),
          const WaveBottom(),
        ],
      ),
    );
  }
}
