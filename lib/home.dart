import 'package:aptech/all.dart';
import 'package:aptech/favourite.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
   int bottomIndex = 0;
  List<Widget> pages = [
    AllView(),
    favView(),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          bottom: TabBar(
            onTap: (index){
              setState(() {
                bottomIndex  = index;
              });
            },
            tabs: [
              Tab(
                child: Text("ALL"),
              ),
              Tab(
                child: Text("Favourity"),
              ),
            
            ],
          ),
        ),
        body: pages[bottomIndex],
      ),
    );
  }
}