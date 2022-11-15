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
      image: 'https://bakerbynature.com/wp-content/uploads/2015/02/Sweet-and-Spicy-Sriracha-Chicken-Wings-0-6.jpg',
      name: 'Chicken',
    ),
    Food(
      image: 'https://media.istockphoto.com/id/1174574086/photo/korean-spicy-instant-noodles-in-the-bowl-on-wooden-background.jpg?s=1024x1024&w=is&k=20&c=W6FX8KEym3RMPyfw7k3G6wzeQwZzJvRqPkcBJGVVLqg=',
      name: 'Noodle',
    ),
    Food(
      image: 'https://www.thefoodius.com/wp-content/uploads/2021/07/Korean-Corn-Dog-La-Kham-Kitchen.jpg',
      name: 'Corn Dog',
    ),
    Food(
      image: 'https://www.recipetineats.com/wp-content/uploads/2020/05/Pepperoni-Pizza_5-SQjpg.jpg',
      name: 'Pizza',
    ),
   
    Food(
      image: 'https://veganwithgusto.com/wp-content/uploads/2021/05/speedy-spaghetti-arrabbiata-featured-e1649949762421.jpg',
      name: 'Speghetti',
    ),
    Food(
      image: 'https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg',
      name: 'Burger',
    ),
    Food(
      image: 'https://media.istockphoto.com/id/1174574086/photo/korean-spicy-instant-noodles-in-the-bowl-on-wooden-background.jpg?s=1024x1024&w=is&k=20&c=W6FX8KEym3RMPyfw7k3G6wzeQwZzJvRqPkcBJGVVLqg=',
      name: 'Noodle',
    ),
      Food(
      image: 'https://i0.wp.com/www.thinkingnutrition.com.au/wp-content/uploads/2020/08/Coffee-Cup-scaled.jpg?fit=2560%2C1920&ssl=1',
      name: 'Coffee',
    ),
    Food(
      image: 'https://ntucclubdtecdn.azureedge.net/assets/images/default-source/shop-gallery-/golden-bubble-milk-tea.jpeg?sfvrsn=bda68973_0',
      name: 'Koi',
    ),
    Food(
      image: 'https://static.toiimg.com/thumb/83740315.cms?imgsize=361903&width=800&height=800',
      name: 'Sandwich',
    )
  ];

  List<Food> filterlist = [];
  final TextEditingController searchController = TextEditingController();

  // add search bar to search items
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
              controller: searchController,
              onChanged: (value) {
                setState(() {
                  filterlist = foods
                      .where((element) => element.name
                          .toLowerCase()
                          .contains(value.toLowerCase()))
                      .toList();
                });
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
            itemCount:
              searchController.text.isEmpty || searchController.text == ''
                ? foods.length
                : filterlist.length,
            itemBuilder: (BuildContext context, int index) {
              var pro =
                  searchController.text.isEmpty || searchController.text == ''
                      ? foods[index]
                      : filterlist[index];
              return Padding(
                padding: const EdgeInsets.all(6.0),
                child: Card(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(pro.image),
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
                              pro.name,
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
        ]));
  }
}
