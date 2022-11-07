import 'package:flutter/material.dart';
import 'mainpage.dart';

class UserPage extends StatelessWidget {
  final User user;

  const UserPage(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.username,
          style: const TextStyle(
            fontFamily: 'Poppins',
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Color.fromARGB(255, 149, 145, 145), spreadRadius: 5)
                ],
              ),
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 193, 180, 129),
                radius: 120,
                child: CircleAvatar(
                  radius: 110,
                  backgroundImage: AssetImage(user.urlAvatar),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              margin: const EdgeInsets.all(30.0),
              padding: const EdgeInsets.all(40.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 227, 208, 255),
                  border: Border.all(
                    color: const Color.fromARGB(255, 94, 90, 90),
                    width: 5.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade900,
                      blurRadius: 7,
                      spreadRadius: 5,
                      offset: const Offset(4, 4),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        'Name',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 86, 88, 93),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        user.username,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 6, 16, 34),
                          // fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Gender',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 86, 88, 93),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Text(
                        user.gender == Icons.female ? "Female" : "Male",
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 6, 16, 34),
                          // fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
