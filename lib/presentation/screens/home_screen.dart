import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: const Color.fromARGB(255, 4, 23, 47),
      body: Column(
        children: [
          Text("Hello world!")
        ],
      ),
    );
  }
}
