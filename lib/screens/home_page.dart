import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
   HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 0;

  List pages = [
    Text("Home Page"),
    Text("Cart"),
    Text("Profile"),
    Text("Profile"),
    Text("Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        animationCurve: Curves.decelerate,
        animationDuration: Duration(milliseconds: 200),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          Icon(Icons.home, color: Colors.white,),
          Icon(Icons.shopping_basket_outlined, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
          Icon(Icons.person_outline, color: Colors.white),
        ],
      ),
    );
  }
}
