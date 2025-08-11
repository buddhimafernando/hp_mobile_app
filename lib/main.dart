import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/core/theme/theme.dart';
import 'package:hp_explore_mobile/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
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
