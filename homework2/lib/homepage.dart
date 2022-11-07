import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "Fruit Mart",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      ),
      body: Center(
          child: ListView(
        children: const [
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/apple.jpg'),
                ),
              ),
              
              title: Text('Apple',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 500.0g', ),
              trailing: Text('4.5\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/beery.jpg'),
                ),
              ),
              
              title: Text('Berry',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 100.0g', ),
              trailing: Text('8.2\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/papaya.jpg'),
                ),
              ),
              
              title: Text('Papaya',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 500.0g', ),
              trailing: Text('3.0\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/passion.jpg'),
                ),
              ),
              
              title: Text('Passion',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 300.0g', ),
              trailing: Text('4.5\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/orange.jpg'),
                ),
              ),
              
              title: Text('Orange',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 500.0g', ),
              trailing: Text('3.4\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/star.jpg'),
                ),
              ),
              
              title: Text('Star Fruit',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 350.0g', ),
              trailing: Text('2.0\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
               horizontalTitleGap: 60,
              leading: CircleAvatar(
                radius: 30.0,
                backgroundColor: Color.fromARGB(255, 44, 36, 1),
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  backgroundImage: AssetImage('assets/images/fruit_splash.jpg'),
                ),
              ),
              
              title: Text('Fruit Splash',style: TextStyle(color: Color.fromARGB(255, 31, 30, 30), fontSize: 18, fontWeight: FontWeight.bold),),
              subtitle: Text('Weight : 500.0g', ),
              trailing: Text('4.0\$/Kg',style: TextStyle(color: Colors.red, fontSize: 18, fontWeight: FontWeight.bold),),
            ),
          ),
        ],
      )),
    );
  }
}
  







