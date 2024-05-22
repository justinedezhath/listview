import 'package:flutter/material.dart';

class listviewbuilderexample extends StatelessWidget {
  const listviewbuilderexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Listviewbuilder'),
      ),
      body: ListView.builder(
        itemCount:10, 
        itemBuilder:(context,index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              color: Colors.amber,
            ),);
        } ),
    );
  }
}