import 'package:aptech/models/item_model.dart';
import 'package:flutter/material.dart';

class AllView extends StatefulWidget {
   AllView({super.key});

  @override
  State<AllView> createState() => _AllViewState();
}

class _AllViewState extends State<AllView> {
  List<Item> item = [
    Item(name: "burger",price: 370,qty: 10,isfav: true),
    Item(name: "chips",price: 350,qty: 10,isfav: false),
    Item(name: "biryani",price: 370,qty: 10,isfav: true),
    Item(name: "chipotle",price: 550,qty: 10,isfav: true),

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: item.length, itemBuilder: (context,index){
      final items = item[index];
      return ListTile(
        title: Text(items.name),
        subtitle: Text("Price ${items.price} | Qty: ${items.qty}"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.add)),
            IconButton(onPressed: (){
              setState(() {
                items.isfav=!(items.isfav);
              });
            }, icon: Icon(items.isfav? Icons.favorite : Icons.favorite_border))
          ],
        ),
      );

    },);
  }
}