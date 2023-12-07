import 'package:flutter/material.dart';

class ChineseFruits extends StatelessWidget {
  const ChineseFruits({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = <String>[
      'Dragon fruit',
      'Lychee',
      'Pomelo',
      'Longan',
      'Persimmon',
      'Mangosteen',
      'Kunquat',
      'Jujube',
      'Star fruit',
      'Hawthorn',
      'Durian',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('China specific fruits'),
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
