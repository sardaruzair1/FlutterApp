import 'package:aptech/home.dart';
import 'package:aptech/order.dart';
import 'package:aptech/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  int bottomIndex = 0;
  List<Widget> pages = [
    HomeView(),
    OrderView(),
    ProfileView(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[bottomIndex],
      bottomNavigationBar: BottomNavigationBar(
         onTap: (index){
          setState(() {
            bottomIndex = index;
          });
           },
          currentIndex: bottomIndex,
        items:[
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Orders",
              icon: Icon(Icons.add_box),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.person),
            ),
          
          ],
      ),
    );
  }
}