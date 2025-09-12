import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/screens/spells/spells_provider.dart';
import 'package:hp_explore_mobile/presentation/widgets/spell_tile.dart';
import 'package:provider/provider.dart';

class SpellsScreen extends StatefulWidget {
  const SpellsScreen({super.key});

  @override
  State<SpellsScreen> createState() => _SpellsScreenState();
}

class _SpellsScreenState extends State<SpellsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.microtask(() => context.read<SpellsProvider>().getSpells(""));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<SpellsProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Spells")),
      body:
          provider.isLoading
              ? CupertinoActivityIndicator()
              : provider.error != null
              ? Text(provider.error!)
              : SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Column(
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: provider.spellsModelList.length,
                      itemBuilder: (context, index) {
                        final spell = provider.spellsModelList[index];
                        return SpellsTile(spell: spell.spell, use: spell.use);
                      },
                    ),
                  ],
                ),
              ),
    );
  }
}
