import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Image {
  String image;
  Image({required this.image});
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft
    ]);
  }

  @override
  Widget build(BuildContext context) {
    double wSize = MediaQuery.of(context).size.width;
    List<Image> images = [
      Image(
        image: 'assets/images/dark_mode.jpg',
      ),
      Image(
        image: 'assets/images/facebook.webp',
      ),
      Image(
        image: 'assets/images/trainer.jpg',
      ),
      Image(
        image: 'assets/images/weather_app.jpg',
      ),
      Image(
        image: 'assets/images/provider.png',
      ),
      Image(
        image: 'assets/images/design2.jpg',
      ),
      Image(
        image: 'assets/images/property.jpg',
      ),
      Image(
        image: 'assets/images/design1.png',
      ),
      Image(
        image: 'assets/images/share_preferences.jpg',
      ),
      Image(
        image: 'assets/images/dark_mode.jpg',
      ),
      Image(
        image: 'assets/images/dark_mode.jpg',
      ),
      Image(
        image: 'assets/images/facebook.webp',
      ),
      Image(
        image: 'assets/images/trainer.jpg',
      ),
      Image(
        image: 'assets/images/weather_app.jpg',
      ),
      Image(
        image: 'assets/images/provider.png',
      ),
      Image(
        image: 'assets/images/design2.jpg',
      ),
      Image(
        image: 'assets/images/property.jpg',
      ),
      Image(
        image: 'assets/images/design1.png',
      ),
      Image(
        image: 'assets/images/share_preferences.jpg',
      ),
      Image(
        image: 'assets/images/dark_mode.jpg',
      ),
    ];

    return Scaffold(
      body: OrientationBuilder(builder: ((context, orientation) {
        return SafeArea(
          child: GridView.count(
              padding: const EdgeInsets.all(10.0),
              crossAxisCount: wSize >= 1 && wSize <= 400
                  ? 2
                  : 3,
              mainAxisSpacing: 20,
              scrollDirection: Axis.vertical,
              crossAxisSpacing: 20,
              childAspectRatio: (1 / .6),
              children: List.generate(
                  images.length,
                  (index) => Container(
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomRight: Radius.circular(30.0),
                          ),
                          image: DecorationImage(
                              image: AssetImage(images[index].image),
                              fit: BoxFit.cover),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30.0),
                                bottomRight: Radius.circular(30.0),
                              ),
                              gradient: LinearGradient(
                                  begin: Alignment.bottomRight,
                                  colors: [
                                    const Color.fromARGB(255, 16, 2, 91)
                                        .withOpacity(.8),
                                    const Color.fromARGB(255, 161, 5, 178)
                                        .withOpacity(.2),
                                  ])),
                        ),
                      ))),
        );
      })),
    );
  }
}
