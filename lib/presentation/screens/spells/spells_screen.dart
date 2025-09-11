import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/widgets/spell_tile.dart';

class SpellsScreen extends StatelessWidget {
  const SpellsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Spells")),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            SpellsTile(spell: "Avada Kedawra", use: "Murder the villain."),
          ],
        ),
      ),
    );
  }
}
