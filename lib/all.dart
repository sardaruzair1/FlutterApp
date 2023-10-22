import 'package:aptech/list.dart';
import 'package:aptech/models/item_model.dart';
import 'package:flutter/material.dart';

class AllView extends StatefulWidget {
   AllView({super.key});

  @override
  State<AllView> createState() => _AllViewState();
}

class _AllViewState extends State<AllView> {
  

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
            
            IconButton(
              onPressed: (){
              
                bool isAdded = false;
              for (var i = 0; i < order.length; i++) {
                if (order[i].id == items.id) {
                 if (order[index].qty < items.qty) {
                  order[i].qty +=1;
                }
                  isAdded = true;
                  break;
                
              }   }
              
                
               
              if (isAdded == false) {
                
                  order.add(Item(id: items.id,name: items.name, price: items.price, qty: 1),
                  
                  );
                }
           

            },
            
             icon: Icon(Icons.add)),
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