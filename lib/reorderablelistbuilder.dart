import 'package:flutter/material.dart';

class Reorderablelistbuilderexample extends StatefulWidget {
  const Reorderablelistbuilderexample({super.key});

  @override
  State<Reorderablelistbuilderexample> createState() => _ReorderablelistbuilderexampleState();
}

class _ReorderablelistbuilderexampleState extends State<Reorderablelistbuilderexample> {
  final List<String> products = 
  List.generate(100, (index) => "Product ${index.toString()}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Reorderable Listviewbuilder'),
      ),
      body: ReorderableListView.builder(
       itemCount: products.length,
       itemBuilder: (context, index) {
        final String productName = products[index];
        return Card(
          key: ValueKey(productName),
          color: Colors.amberAccent,
          elevation: 1,
          margin: const EdgeInsets.all(10),
          child: ListTile(
            contentPadding:const EdgeInsets.all(25),
            title: Text(
              productName,
              style: const TextStyle(fontSize: 18),
            ),
          ),
        );
       },
        onReorder: (oldIndex, newIndex) {
          setState(() {
            if (newIndex > oldIndex) {
              newIndex -=1;
            }
            final element = products.removeAt(oldIndex);
            products.insert(newIndex, element);
          });
        }),
    );
  }
}