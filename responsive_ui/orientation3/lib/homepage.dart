import 'package:flutter/material.dart';
import 'package:orientation3/widget/button.dart';
import 'package:orientation3/widget/wave_bottom.dart';
import 'package:orientation3/widget/wave_navbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double wSize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: wSize >= 1 && wSize <= 800
        ? Column(
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
        )
      : Column(
        children: [
          const WaveNavbar(),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 100.0),
                child: Column(
                  children: [
                    const Text(
                      "Easy Approach",
                      style: TextStyle(
                        fontSize: 40.0,
                        color: Color.fromARGB(255, 106, 212, 218),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Text(
                        "Easy Approach makes it easy for everyone to dessiminate knowledge, and making difficult problems easy to solve.",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 18,
                            letterSpacing: 0.7,
                            fontFamily: 'Poppin',
                            color: Colors.grey[600]),
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Button(),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.width / 3,
                margin: const EdgeInsets.only(right: 100.0),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bgImg.png"),
                    fit: BoxFit.contain)),
              )
            ],
          ),
          Expanded(child: Container()),
          const WaveBottom()
        ],
      ));
  }
}
