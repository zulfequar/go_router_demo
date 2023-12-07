import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_demo/favourite_fruits.dart';
import 'package:go_router_demo/fruits_categories.dart';
import 'package:go_router_demo/rare_indian_fruits.dart';

import 'american_fruits.dart';
import 'chinese_fruits.dart';
import 'custom_button.dart';
import 'common_indian_fruits.dart';
import 'indian_fruits.dart';

void main() {
  runApp(const MyApp());
}

GoRouter _goRouter = GoRouter(
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    // Home route
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      routes: <RouteBase>[
        // Fruits routes
        GoRoute(
          path: 'fruits-categories',
          builder: (BuildContext context, GoRouterState state) =>
              const FruitCategories(),
          routes: <RouteBase>[
            // Indian fruits routes
            GoRoute(
              path: 'indian-fruits',
              builder: (BuildContext context, GoRouterState state) =>
                  const IndianFruits(),
              routes: <RouteBase>[
                GoRoute(
                  path: 'common-indian-fruits',
                  builder: (BuildContext context, GoRouterState state) =>
                      const CommonIndianFruits(),
                ),
                GoRoute(
                  path: 'rare-indian-fruits',
                  builder: (BuildContext context, GoRouterState state) =>
                      const RareIndianFruits(),
                ),
              ],
            ),

            // Chinese fruits routes
            GoRoute(
              path: 'chinese-fruits',
              builder: (BuildContext context, GoRouterState state) =>
                  const ChineseFruits(),
            ),

            // American fruits routes
            GoRoute(
              path: 'american-fruits',
              builder: (BuildContext context, GoRouterState state) =>
                  const AmericanFruits(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: '/fav-fruits',
      builder: (BuildContext context, GoRouterState state) =>
          const FavouriteFruits(),
    ),
  ],
);

class FruitsCategories {
  const FruitsCategories();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: _goRouter,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('GoRouter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomButton(
              text: 'View fruits categories',
              onPressed: () => context.go('/fruits-categories'),
            ),
            CustomButton(
              text: 'View favourite fruits',
              onPressed: () => context.go('/fav-fruits'),
            ),
          ],
        ),
      ),
    );
  }
}
