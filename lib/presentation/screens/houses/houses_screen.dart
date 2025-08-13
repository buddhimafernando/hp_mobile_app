import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/widgets/character_tile.dart';

class HousesScreen extends StatefulWidget {
  const HousesScreen({super.key});

  @override
  State<HousesScreen> createState() => _HousesScreenState();
}

class _HousesScreenState extends State<HousesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Houses")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          CharacterTile(image: "",title: "Gryffindor",)
        ],),
      ),
    );
  }
}