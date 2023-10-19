import 'package:aptech/list.dart';
import 'package:flutter/material.dart';
import 'package:aptech/models/item_model.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: order.length,
      itemBuilder: (context, index){
        return ListTile(
          title: Text(order[index].name),
          subtitle: Text(
            "Price: ${order[index].price} | Qty: ${order[index].qty}"
          ),
        );
      },
    );

  }
}