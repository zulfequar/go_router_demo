import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FavouriteFruits extends StatelessWidget {
  const FavouriteFruits({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> favFruits = [
      'Banana',
      'Orange',
      'Mango',
      'Grapes',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Favourite Fruits'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.go('/');
          },
        ),
      ),
      body: ListView.builder(
        itemCount: favFruits.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(favFruits[index]),
        ),
      ),
    );
  }
}
