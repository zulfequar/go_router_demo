import 'package:flutter/material.dart';

class RareIndianFruits extends StatelessWidget {
  const RareIndianFruits({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> fruits = <String>[
      'Falsa (Indian Sherbet Berries)',
      'Japani Phal (Persimmon)',
      'Jungli Jalebi/Kodukkapuli (Camachile)',
      'Buddha\'s Hand (Fingered Citron)',
      'Langsah/Lotka (Langsat)',
      'Mangustaan (Mangosteen)',
      'Targola/Taal (Ice Apple or Sugar Palm fruit)',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('India specific rare fruits'),
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
