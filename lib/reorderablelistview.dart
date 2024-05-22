// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class reorderablelistviewexample extends StatefulWidget {

  @override
  State<reorderablelistviewexample> createState() => reorderablelistviewexampleState();
}

class reorderablelistviewexampleState extends State<reorderablelistviewexample> {
  final List<String> _todos =['Task A','Task B','Task C','Task D'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reorderable Listview'),
      ),
      body: ReorderableListView(
        header: Container(
          padding: const EdgeInsets.all(25),
          color: Colors.yellow,
          child: const Text('My Todo List')),
        children:_todos
        .map((task) => Container(
          key: ValueKey(task),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            border: Border.all(width: 1,color: Colors.green)
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.all(25),
            leading: const Icon(Icons.lock_clock),
            title:Text(
              task,
              style:const TextStyle(fontSize: 24),
            ),
            trailing:const Icon(Icons.drag_handle_outlined),
          ),
        ))
        .toList(),
      //The reorder function
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -=1;
            }
            final element = _todos.removeAt(oldIndex);
            _todos.insert(newIndex, element);
          },);
        }),
    );
  }
}