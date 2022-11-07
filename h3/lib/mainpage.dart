import 'package:flutter/material.dart';
import 'package:test2/userpage.dart';

class User {
  final String username, email, urlAvatar;
  IconData gender;

  User({
    required this.username,
    required this.email,
    required this.urlAvatar,
    required this.gender,
  });
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<User> users = [
    User(
      username: 'Kimsour',
      email: 'kimsourrith@gmail.com',
      urlAvatar: 'assets/images/person1.jpg',
      gender: Icons.female ,
    ),
    User(
      username: 'Rebecca',
      email: 'rebeccaheng@gmail.com',
      urlAvatar: 'assets/images/person2.jpg',
      gender: Icons.female,
    ),
    User(
      username: 'Long',
      email: 'long@gmail.com',
      urlAvatar: 'assets/images/person3.jpeg',
      gender: Icons.female,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person4.jpg',
      gender: Icons.female,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person1.jpg',
      gender: Icons.female
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person2.jpg',
      gender: Icons.female,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person3.jpeg',
      gender: Icons.female,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person4.jpg',
      gender: Icons.male,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person1.jpg',
      gender: Icons.female,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person2.jpg',
      gender: Icons.female,
    ),
    User(
      username: 'Hor',
      email: 'hor@gmail.com',
      urlAvatar: 'assets/images/person3.jpeg',
      gender: Icons.female,
    ),
    User(
      username: 'Kimsour',
      email: 'kimsourrith@gmail.com',
      urlAvatar: 'assets/images/person1.jpg',
      gender: Icons.female,
    ),
    User(
      username: 'Kimsour',
      email: 'kimsourrith@gmail.com',
      urlAvatar: 'assets/images/person2.jpg',
      gender: Icons.female,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListView Navigation',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              var user = users[index];
              return SingleChildScrollView(
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: ExactAssetImage(user.urlAvatar)),
                    title: Text(
                      user.username,
                      style: const TextStyle(fontFamily: 'Poppins'),
                    ),
                    subtitle: Text(user.email,
                        style: const TextStyle(fontFamily: 'Poppins')),
                    trailing:  Icon(
                      user.gender,
                      color: user.gender == Icons.female ? Colors.red : Colors.blue,
                    ),
                    // trailing: Icon(
                    //   user.gender == Icons.female ? Colors.red : Colors.blue,
                    // ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => UserPage(user),
                      ));
                    },
                  ),
                ),
              );
            }));
  }
}
