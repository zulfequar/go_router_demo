import 'package:flutter/material.dart';

class FavouriteFruits extends StatelessWidget {
  const FavouriteFruits({super.key, required this.favFruits});

  final List<String> favFruits;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite Fruits'),
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
