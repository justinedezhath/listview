import 'package:flutter/material.dart';

class Listviewexamples extends StatelessWidget {
  const Listviewexamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listviewexamples'),
      ),
      body: ListView(
        shrinkWrap: true,
        //physics: NeverScrollableScrollPhysics(),
        children: [
          Container(
          height: 200,
          width: 100,
          color: Colors.red,
        ),
        Container(
          height: 200,
          width:100,
          color: Colors.yellow,
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.blue,
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.green,
        ),
        Container(
          height: 200,
          width: 100,
          color: Colors.orange,
        ),
        ],
      ),
    );
  }
}