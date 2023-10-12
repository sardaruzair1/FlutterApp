import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$counter"),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: (){
              setState(() {
                counter++;
              });
            },
            child: Icon(Icons.add)
          ),
           SizedBox(height: 10),
          ElevatedButton(
            onPressed: (){
              setState(() {
                if (counter != 0) {
                counter--;
                }
              });
            },
            child: Icon(Icons.remove)
          ),
           SizedBox(height: 10),
          ElevatedButton(
            onPressed: (){
              setState(() {
                counter = 0;
              });
            },
            child: Icon(Icons.refresh)
          )
        ],
       ),
      ),
     
      
        
    );
  }
}