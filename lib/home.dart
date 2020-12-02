import 'package:flutter/material.dart';
import 'package:interntaskapp/Profile.dart';
import 'package:interntaskapp/cart.dart';

import 'myhomepage.dart';
Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   //await Firebase.ini
  
  runApp(Home());
}
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    MyHomePage (),
   Cart(),
    ProfilePage (),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.green[400],
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 30,),
            // ignore: deprecated_member_use
           title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,size: 30,),
            // ignore: deprecated_member_use
           title: Text('Search'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person,size: 30,),
              // ignore: deprecated_member_use
            title: Text('Profile')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}