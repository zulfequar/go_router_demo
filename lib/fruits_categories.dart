import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/custom_button.dart';

class FruitCategories extends StatelessWidget {
  const FruitCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Fruit categories'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              text: 'India specific fruits',
              onPressed: () {
                context.go('/fruits-categories/indian-fruits');
              },
            ),
            CustomButton(
              text: 'China specific fruits',
              onPressed: () {
                context.go('/fruits-categories/chinese-fruits');
              },
            ),
            CustomButton(
              text: 'America specific fruits',
              onPressed: () {
                context.go('/fruits-categories/american-fruits');
              },
            ),
          ],
        ),
      ),
    );
  }
}
