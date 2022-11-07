import 'package:flutter/material.dart';

import 'homepage.dart';

class PlanetPage extends StatelessWidget {
  final Planet planet;
  const PlanetPage(this.planet, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          actions: const [
            Icon(
              Icons.more_vert,
            ),
            SizedBox(
              width: 20.0,
            )
          ],
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 0, 1, 9).withOpacity(1),
                  Colors.white70.withOpacity(0.2),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.indigo.withOpacity(0.4), BlendMode.colorBurn),
                image: const AssetImage('assets/images/bg.jpg'),
              ),
            ),
            width: double.maxFinite,
            height: double.maxFinite,
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 60),
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color.fromARGB(255, 101, 95, 95),
                            Colors.red,
                          ],
                        ),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 25.0,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 150,
                                ),
                                // Name and description
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: planet.name,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '\n${planet.desc}',
                                        style: const TextStyle(
                                          color: Color.fromARGB(
                                            255, 219, 155, 231),
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                        ))
                                  ]))
                              ],
                            ),
                          ),

                          // Blue Line below text
                          // Container(
                          //   height: 3.0,
                          //   width: 33.0,
                          //   decoration: BoxDecoration(
                          //     color: const Color.fromARGB(255, 73, 190, 226),
                          //     borderRadius: BorderRadius.circular(20),
                          //   ),
                          // ),
                          // const SizedBox(
                          //   height: 30.0,
                          // ),

                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Color.fromARGB(255, 213, 150, 224),
                                  size: 16.0,
                                ),
                                Text(
                                  planet.speed,
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 241, 202, 248)),
                                ),
                                const SizedBox(
                                  width: 20.0,
                                ),
                                Icon(
                                  Icons.arrow_downward,
                                  color: Color.fromARGB(255, 206, 152, 216),
                                  size: 16.0,
                                ),
                                Text(
                                  planet.acl,
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 233, 202, 239)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 120,
                        width: 95,
                        margin: EdgeInsets.only(bottom: 140),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage(planet.img),
                              fit: BoxFit.cover,
                            )),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, left: 0),
                  child: Column(
                    children: [
                      Text(
                        "OVERVIEW",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 3.0,
                        width: 33.0,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 73, 190, 226),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: const [
                          Expanded(
                            child: Text(
                              '​Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.​Mars is the fourth planet from the Sun – a dusty, cold, desert world with a very thin atmosphere. Mars is also a dynamic planet with seasons, polar ice caps, canyons, extinct volcanoes, and evidence that it was even more active in the past.',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white70,
                                height: 1.2,
                                letterSpacing: 1.0,
                              ),
                              softWrap: false,
                              maxLines: 80,
                              overflow: TextOverflow.ellipsis, // new
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
