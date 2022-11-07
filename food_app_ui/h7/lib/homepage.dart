import 'package:flutter/material.dart';

class Food {
  final String image, name;
  Food({required this.image, required this.name});
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Food> foods = [
    Food(
      image: 'assets/images/burger.webp',
      name: 'Burger',
    ),
    Food(
      image: 'assets/images/coffee.png',
      name: 'Coffee',
    ),
    Food(
      image: 'assets/images/pizza.jpg',
      name: 'Pizza',
    ),
    Food(
      image: 'assets/images/cake.jpg',
      name: 'Cake',
    ),
    Food(
      image: 'assets/images/speghetti.jpg',
      name: 'Speghetti',
    ),
    Food(
      image: 'assets/images/chicken.jpg',
      name: 'Chicken',
    ),
    Food(
      image: 'assets/images/koreannoodle.jpg',
      name: 'Noodle',
    ),
     Food(
      image: 'assets/images/cornDog.jpg',
      name: 'Corn Dog',
    ),
    Food(
      image: 'assets/images/corndog.webp',
      name: 'Corn Dog',
    ),
   Food(
      image: 'assets/images/pizza.jpg',
      name: 'Pizza',
    ),
    Food(
      image: 'assets/images/chicken.jpg',
      name: 'Chicken',
    ),
     Food(
      image: 'assets/images/speghetti.jpg',
      name: 'Speghetti',
    ),
    Food(
      image: 'assets/images/burger.jpg',
      name: 'Burger',
    ),
    Food(
      image: 'assets/images/speghetti.jpg',
      name: 'Speghetti',
    ),
    Food(
      image: 'assets/images/chicken.jpg',
      name: 'Chicken',
    ),
    Food(
      image: 'assets/images/pizza.jpg',
      name: 'Pizza',
    ),
    Food(
      image: 'assets/images/koreannoodle.jpg',
      name: 'Noodle',
    ),
    Food(
      image: 'assets/images/chicken.jpg',
      name: 'Chicken',
    ),
  ];
  
  List<Food> items = [];
  // final TextEditingController _searchQuery = TextEditingController();

 
    // add search bar to search items
  @override
  void initState() {
    // adding all itemsin items at start
    items.addAll(foods);
    super.initState();
  }

  // function for filtering list
  filterSearch(String query) {
    if (query.isNotEmpty) {
      List<Food> foodList = [];
      for (var item in foodList) {
        if (item.name.contains(query)) {
          foodList.add(item);
        }
      }
      setState(() {
        items.clear();
        items.addAll(foodList);
      });
      return;
    } else {
      setState(() {
        items.clear();
        items.addAll(foods);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text(
          'Categories',
          style: TextStyle(fontFamily: 'Poppin', fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(
            Icons.shopping_cart,
            size: 20,
          ),
          SizedBox(
            width: 20.0,
          )
        ],
      ),

      body: Column(children: [
        // Search Container
        Container(
          margin: const EdgeInsets.all(16),
          child: TextField(
            onChanged: (value) {
              filterSearch(value);
            },
            decoration: InputDecoration(
              labelText: 'Search',
              hintText: 'Search',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16))),
          ),
        ),
        // Vegetables Container
        Row(
          children: [
            const SizedBox(
              width: 20.0,
            ),
            const Icon(
              Icons.palette,
              color: Color.fromARGB(255, 33, 29, 116),
            ),
            const SizedBox(
              width: 20.0,
            ),
            const Text(
              'Vegetables',
              style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'Poppin',
                  fontWeight: FontWeight.bold),
            ),
            Expanded(child: Container()),
            const Icon(Icons.dehaze, color: Color.fromARGB(255, 33, 29, 116)),
            const SizedBox(
              width: 30.0,
            ),
            const Icon(
              Icons.palette,
              color: Color.fromARGB(255, 33, 29, 116),
            ),
            const SizedBox(
              width: 20.0,
            ),
          ],
        ),

        const SizedBox(
          height: 20.0,
        ),
        Expanded(
            child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: foods.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: Card(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(foods[index].image),
                          fit: BoxFit.cover)),
                  // Food Name
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.8),
                              Colors.black.withOpacity(.2),
                            ])),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue),
                            child: const Icon(
                              Icons.favorite,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        Expanded(child: Container()),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            foods[index].name,
                            style: const TextStyle(
                                fontFamily: 'Poppin',
                                color: Colors.blue,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ))
      ])
    );
  }
}