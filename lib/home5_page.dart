// import 'package:aptech/calls_view.dart';
// import 'package:aptech/chat_view.dart';
// import 'package:aptech/status_view.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
  

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // List<String> names = [
//   //   "uzair",
//   //   "haleema",
//   //   "raziya",
//   //   "parveen",
//   // ];
//   int bottomIndex = 0;
//   List<Widget> pages = [
//     ChatView(),
//     StatusView(),
//     CallView(),

//   ];


//   @override
  
//   Widget build(BuildContext context) {
    // return DefaultTabController(
    //   length: 3,
    //   child: Scaffold(
    //     appBar: AppBar(
    //       backgroundColor: Colors.black,
    //       elevation: 0,
    //       iconTheme: IconThemeData(color: Colors.black),
    //       bottom: TabBar(
    //         onTap: (index){
    //           setState(() {
    //             bottomIndex  = index;
    //           });
    //         },
    //         tabs: [
    //           Tab(
    //             child: Text("Chats"),
    //           ),
    //           Tab(
    //             child: Text("Status"),
    //           ),
    //           Tab(
    //             child: Text("Calls"),
    //           ),
    //         ],
    //       ),
    //     ),
    //     body: pages[bottomIndex],
    //   ),
    // );
//   }
// }
// class Item{
//   String name;
//   String price;
//   String qty;
//   Item({
//     required this.name,
//     required this.price,
//     required this.qty,
//   });
// }
// import 'package:aptech/calls_view.dart';
// import 'package:aptech/chat_view.dart';
// import 'package:aptech/status_view.dart';
// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
  

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // List<String> names = [
//   //   "uzair",
//   //   "haleema",
//   //   "raziya",
//   //   "parveen",
//   // ];
//   int bottomIndex = 0;
//   List<Widget> pages = [
//     ChatView(),
//     StatusView(),
//     CallView(),

//   ];


//   @override
  
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         body: Column(children: [
//           TabBar(
//             unselectedLabelColor: Colors.red,
//             labelColor: Colors.black,
//             onTap: (index){
//               setState(() {
//                 bottomIndex  = index;
//               });
//             },
//             tabs: [
//               Tab(
//                 child: Text("Chats"),
//               ),
//               Tab(
//                 child: Text("Status"),
//               ),
//               Tab(
//                 child: Text("Calls"),
//               ),
//             ],
//           ),
//           Expanded(child: TabBarView(children: pages)),
//         ]),
//       ),
//     );
//   }
// }
// class Item{
//   String name;
//   String price;
//   String qty;
//   Item({
//     required this.name,
//     required this.price,
//     required this.qty,
//   });
// }

import 'package:aptech/calls_view.dart';
import 'package:aptech/chat_view.dart';
import 'package:aptech/status_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<String> names = [
  //   "uzair",
  //   "haleema",
  //   "raziya",
  //   "parveen",
  // ];
  int bottomIndex = 0;
  List<Widget> pages = [
    ChatView(),
    StatusView(),
    CallView(),

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
              label: "Chat",
              icon: Icon(Icons.chat),
            ),
            BottomNavigationBarItem(
              label: "Status",
              icon: Icon(Icons.star_outline_sharp),
            ),
            BottomNavigationBarItem(
              label: "Chat",
              icon: Icon(Icons.call),
            ),
          
          ],
       
      ),
    );
  }
}
class Item{
  String name;
  String price;
  String qty;
  Item({
    required this.name,
    required this.price,
    required this.qty,
  });
}