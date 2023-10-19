import 'package:aptech/list.dart';
import 'package:aptech/models/item_model.dart';
import 'package:flutter/material.dart';

class favView extends StatelessWidget {
  const favView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Item> favourite = [];
    favourite = item.where((e) => e.isfav).toList();
    return ListView.builder(
      itemCount: favourite.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(favourite[index].name),
          subtitle: Text(
            "Price ${favourite[index].price}"
          ),
        );
      },
    );

  }
}