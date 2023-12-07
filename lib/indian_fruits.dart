import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/custom_button.dart';

class IndianFruits extends StatelessWidget {
  const IndianFruits({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('India specific fruits'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomButton(
              text: 'Common Indian fruits',
              onPressed: () {
                context.go('/fruits-categories/indian-fruits/common-indian-fruits');
              },
            ),
            CustomButton(
              text: 'Rare Indian fruits',
              onPressed: () {
                context.go('/fruits-categories/indian-fruits/rare-indian-fruits');
              },
            ),
          ],
        ),
      ),
    );
  }
}
