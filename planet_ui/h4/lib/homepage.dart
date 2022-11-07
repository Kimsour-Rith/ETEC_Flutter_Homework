import 'package:flutter/material.dart';
import 'package:h4/single_page.dart';

class Planet {
  final String img, name, desc, speed, acl;
  Planet(
      {required this.name,
      required this.desc,
      required this.speed,
      required this.acl,
      required this.img});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Planet> planets = [
    Planet(
        name: "Mars",
        desc: "Mikyway Galaxy",
        speed: "54.6m km",
        acl: "3.71 m/s2",
        img: "assets/images/marr.jpg"),
    Planet(
        name: "Neptune",
        desc: "Mikyway Galaxy",
        speed: "2.7b km",
        acl: "11.5 m/s2",
        img: "assets/images/netune.jpg"),
    Planet(
        name: "Moon",
        desc: "Mikyway Galaxy",
        speed: "384.4k km",
        acl: "162 m/s2",
        img: "assets/images/moon.jpg"),
    Planet(
        name: "Earth",
        desc: "Mikyway Galaxy",
        speed: "54.6m km",
        acl: "3.71 m/s2",
        img: "assets/images/earth.jpg"),
    Planet(
        name: "Pluton",
        desc: "Mikyway Galaxy",
        speed: "54.6m km",
        acl: "5.67 m/s2",
        img: "assets/images/pluton.jpg"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Treva',
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w600),
        )),
        actions: const [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),
      body: Container(
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
        child: ListView.builder(
          itemCount: planets.length,
          itemBuilder: ((context, index) {
            var planet = planets[index];
            return SingleChildScrollView(
              child: ListTile(
                title: Stack(
                  children: [
                    Container(
                      margin:
                        const EdgeInsets.only(left: 50, top: 30, right: 30),
                      height: 130,
                      width: 300,
                      decoration: BoxDecoration(
                        // color: Colors.purple[900],
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black,
                            Color.fromARGB(255, 104, 61, 112),
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
                          Container(
                            padding: const EdgeInsets.only(left: 80, top: 20),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    RichText(
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
                                              style: TextStyle(
                                                color: Colors.purple[300],
                                                fontSize: 14,
                                                fontFamily: 'Poppins',
                                              ))
                                        ])),
                                    Expanded(child: Container()),
                                    Icon(
                                      Icons.more_vert,
                                      color: Colors.purple[400],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 180),
                                  height: 3.0,
                                  width: 33.0,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 73, 190, 226),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.purple[300],
                                      size: 16.0,
                                    ),
                                    Text(
                                      planet.speed,
                                      style:
                                          TextStyle(color: Colors.purple[300]),
                                    ),
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                    Icon(
                                      Icons.arrow_downward,
                                      color: Colors.purple[300],
                                      size: 16.0,
                                    ),
                                    Text(
                                      planet.acl,
                                      style:
                                          TextStyle(color: Colors.purple[300]),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        child: Container(
                      margin:
                        const EdgeInsets.only(left: 10, right: 60, top: 45),
                      height: 120,
                      width: 95,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(planet.img),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: const [
                        BoxShadow(
                          blurRadius: 25.0,
                        )
                        ],
                      ),
                          
                    )),
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => PlanetPage(planet),
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
