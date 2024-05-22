import 'package:flutter/material.dart';

class listviewseperatorexample extends StatelessWidget {
  const listviewseperatorexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Listviewseperator'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Padding(
            padding:const EdgeInsets.only(left: 10,right: 10),
          child: Container(
            height: 20,
            width: 10,
        color: Colors.lightBlueAccent,
        child: Text(('contact $index'),
        style:const TextStyle(color: Colors.red, fontSize: 15),
        ),
        ),);
      },
      separatorBuilder: (context, index) {
        return const Divider();
      },
       itemCount: 20,
      ),
    );
  }
}