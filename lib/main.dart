import 'package:flutter/material.dart';
import 'package:listview/listview.dart';
import 'package:listview/listsearching.dart';
import 'package:listview/listviewbuilder.dart';
import 'package:listview/listviewseperator.dart';
import 'package:listview/reorderablelistbuilder.dart';
import 'package:listview/reorderablelistview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:reorderablelistviewexample()//const Reorderablelistbuilderexample() // //const listviewseperatorexample() //const listviewbuilderexample() //const listviewsearchingexample() //Listviewexamples()
    );
  }
}

