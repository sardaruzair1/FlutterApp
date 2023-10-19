import 'package:aptech/home5_page.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  
  ChatView({super.key});
List <Item> persons = [
    Item(name: "computer", price: "28", qty: "12"),
    Item(name: "laptop", price: "45", qty: "12"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          itemCount: persons.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text(persons[index].name),
              subtitle: Text(persons[index].price),
              leading: Text(persons[index].qty),
            );
          }
        );
       
        
          
  }
}