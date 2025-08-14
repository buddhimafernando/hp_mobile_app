import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/screens/characters/characters_provider.dart';
import 'package:hp_explore_mobile/presentation/widgets/character_tile.dart';
import 'package:provider/provider.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.microtask(
      () => context.read<CharactersProvider>().getCharactersList(""),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<CharactersProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Characters")),
      body:
          provider.isLoading
              ? Center(child: CircularProgressIndicator())
              : provider.error != null
              ? Center(child: Text(provider.error!))
              : SingleChildScrollView(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(8),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.6,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 20,
                          ),
                      itemCount: provider.charactersList.length,
                      itemBuilder: (context, index) {
                        final character = provider.charactersList[index];
                        return CharacterTile(
                          image: character.image,
                          title: character.fullName,
                          description: character.hogwartsHouse,
                        );
                      },
                    ),
                  ],
                ),
              ),

      // child: Column(
      //   children: [
      //     SizedBox(height: MediaQuery.of(context).size.height * 0.03),

      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     CharacterTile(
      //       image:
      //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUU8AHFLoJep-X6rUF9Hw0BSNosNpQciUNcctuIfjQrI35pqRaJF7Uw9LzrhwFSbU4YRU&usqp=CAU",
      //       title: "Harry Potter",
      //       description:
      //           "Gryffindor, the boy who was chosen, the boy who lived",
      //     ),

      //     CharacterTile(
      //       image:
      //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUU8AHFLoJep-X6rUF9Hw0BSNosNpQciUNcctuIfjQrI35pqRaJF7Uw9LzrhwFSbU4YRU&usqp=CAU",
      //     ),
      //   ],
      // ),
      // CharacterTile(
      //   image:
      //       "https://placeholderimagegenerator.com/wp-content/uploads/2024/12/Light-person-placeholder-round-corners_png_.png",
      //   title: "hermione granger",
      // ),
    );
  }
}
