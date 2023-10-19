import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.black,
          bottom:  TabBar(
              tabs: [
                Tab(
                  child: Text("Seen"),
                ),
                Tab(
                  child: Text("Unseen"),
                ),
                
              ],
            ),
        ) ,
        body: Center(
          child: Text('Status'),
        ),
      ),
    );
  }
}