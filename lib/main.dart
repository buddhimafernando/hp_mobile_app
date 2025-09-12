import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/core/theme/theme.dart';
import 'package:hp_explore_mobile/data/services/services.dart';
import 'package:hp_explore_mobile/presentation/screens/books/books_provider.dart';
import 'package:hp_explore_mobile/presentation/screens/characters/characters_provider.dart';
import 'package:hp_explore_mobile/presentation/screens/houses/houses_provider.dart';
import 'package:hp_explore_mobile/presentation/screens/spells/spells_provider.dart';
import 'package:hp_explore_mobile/presentation/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CharactersProvider(apiServices: APIServices()),
        ),
        ChangeNotifierProvider(
          create: (_) => HousesProvider(apiServices: APIServices()),
        ),
        ChangeNotifierProvider(
          create: (_) => BooksProvider(apiServices: APIServices()),
        ),
        ChangeNotifierProvider(
          create: (_) => SpellsProvider(apiServices: APIServices()),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.hogwartsTheme,
      home: SplashScreen(),
    );
  }
}
