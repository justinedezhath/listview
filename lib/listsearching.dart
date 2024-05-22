import 'package:flutter/material.dart';

class listviewsearchingexample extends StatefulWidget {
  const listviewsearchingexample({super.key});

  @override
  State<listviewsearchingexample> createState() => listviewsearchingexampleState();
}

class listviewsearchingexampleState extends State<listviewsearchingexample> {
// This holds a list of fiction users
//You can use data fetched from a database of a server as well
  final List<Map<String,dynamic>> _allusers =[
    {"Id": 1, "name": "Arun","age": 21},
    {"Id": 2, "name": "Ismail","age": 22},
    {"Id": 3, "name": "Imran", "age": 32},
    {"Id": 4, "name": "Arathi", "age": 35},
    {"Id": 5, "name": "Ajith", "age": 21},
    {"Id": 6, "name": "Renju", "age": 33},
    {"Id": 7, "name": "James", "age": 30},
    {"Id": 8, "name": "Jackson","age":25},
  ];
  //This list holds the data for the list view
  List<Map<String, dynamic>> _foundusers = [];
  @override
  void initState() {
    _foundusers =_allusers;
    super.initState();
  }
  void _runFilter(String enteredKeyboard) {
    List<Map<String, dynamic>> result =[];
    if (enteredKeyboard.isEmpty) {
      result =_allusers;
    } else {
      result =_allusers
      .where((user) => user["name"].toLowerCase().Contains(enteredKeyboard.toLowerCase()))
      .toList();
    }
    setState(() {
      _foundusers =result;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listviewsearching'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children:[
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                labelText: 'Search',suffixIcon: Icon(Icons.search)
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: _foundusers.isNotEmpty
            ? ListView.builder(
              itemCount: _foundusers.length,
              itemBuilder:(context, index) => Card(
                key: ValueKey(_foundusers[index]["Id"]),
                color: Colors.lightGreen,
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 10),
                child:ListTile(
                  leading: Text(
                    _foundusers[index]["Id"].toString(),
                    style:const TextStyle(fontSize: 24),
                  ),
                  title: Text(_foundusers[index]["name"]),
                  subtitle: Text(
                    '${_foundusers[index]["age"].toString()} years old'
                  ),
                ),
                ),
                )
               : const Text(
                'No result found',
                style: TextStyle(fontSize: 24),
               ),
                ),
          ],
        ),),
    );
  }
}