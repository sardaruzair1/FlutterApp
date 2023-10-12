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
  List <Person> persons = [
    Person(name: "uzair", email: "uzair@gmail.com"),
    Person(name: "raziya", email: "raziya@gmail.com"),
  ];


  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: persons.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(persons[index].name),
            subtitle: Text(persons[index].email),
          );
        }
      )
     
      
        
    );
  }
}
class Person{
  String name;
  String email;
  Person({
    required this.name,
    required this.email,
  });
}