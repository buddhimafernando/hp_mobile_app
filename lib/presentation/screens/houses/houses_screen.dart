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
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.6,
                crossAxisSpacing: 10,
                mainAxisSpacing: 20,
              ),
              // itemCount: provider.charactersList.length,
              itemBuilder: (context, index) {
                // final character = provider.charactersList[index];
                return CharacterTile(
                  // image: character.image,
                  // title: character.fullName,
                  // description: character.hogwartsHouse,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
