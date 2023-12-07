import 'package:flutter/material.dart';

class CommonIndianFruits extends StatelessWidget {
  const CommonIndianFruits({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = <String>[
      'Banana',
      'Mango',
      'Jack fruit',
      'Guava',
      'Papaya',
      'Indian Gooseberry (Amla)',
      'Jamun',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('India specific common fruits'),
      ),
      body: ListView.builder(
        itemCount: fruits.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(fruits[index]),
        ),
      ),
    );
  }
}
