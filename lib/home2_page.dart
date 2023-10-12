import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Aptech Farig Road"),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     container100px(color: Colors.red),
                     container100px(color: Colors.green),
                     container100px(color: Colors.purple),
                     container100px(color: Colors.pink),
                     container100px(color: Colors.orange),
                  ],
                )
              ],
            ),
            
          )
          
        ],
        )
     
    );
  }

  Container container100px({
    color,
  }) {
    return Container(
                      margin: EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      color: color ?? Colors.blue,
                    );
  }
}
