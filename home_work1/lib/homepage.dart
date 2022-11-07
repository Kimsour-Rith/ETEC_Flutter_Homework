import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Listview"),
        ),
        body: Center(
          child: Column(children: const [
            Users('images/person1.jpg', 'Abhi', 'india', '098765432'),
            Users('images/person2.jpg', 'Jenny', 'USA', '098765432'),
            Users('images/person3.jpeg', 'Lisa', 'Thai', '098765432'),
            Users('images/person4.jpg', 'Kaka', 'cambodia', '098765432'),
          ]),
        ));
  }
}

class Users extends StatelessWidget {
  const Users(this.img, this.name, this.location, this.phonenumber, {super.key});
  final String img;
  final String name;
  final String location;
  final String phonenumber;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        color: Colors.grey[300],
      ),
      margin: const EdgeInsets.only(top: 20.0),
      width: 350,
      height: 100,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(width: 25),
          ClipRRect(
            borderRadius: BorderRadius.circular(11.0),
            child: Image.asset(
              img,
              alignment: const Alignment(1.0, 1.0),
              height: 70,
              width: 70,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Text(
                name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 90, 51, 182),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              RichText(
                text:  TextSpan(
                  children: [
                    const WidgetSpan(
                      child: Icon(Icons.location_on, size: 20),
                    ),
                    TextSpan(
                        text: location,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 90, 51, 182),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                  ],
                ),
              ),
              RichText(
                text:  TextSpan(
                  children: [
                    const WidgetSpan(
                      child: Icon(Icons.phone, size: 20),
                    ),
                    TextSpan(
                      text :phonenumber,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 90, 51, 182),
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      )
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    )
  );
  }

}
