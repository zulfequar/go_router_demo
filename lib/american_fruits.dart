import 'package:flutter/material.dart';

class AmericanFruits extends StatelessWidget {
  const AmericanFruits({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = <String>[
      'Blueberries',
      'Cranberries',
      'Black Cherries',
      'Pawpaws',
      'Mayhaws',
      'Chokecherries',
      'American Persimmons',
      'Tangelos',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('America specific fruits'),
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
