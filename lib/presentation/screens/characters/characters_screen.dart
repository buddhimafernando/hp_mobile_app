import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/widgets/character_tile.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Characters")),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CharacterTile(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUU8AHFLoJep-X6rUF9Hw0BSNosNpQciUNcctuIfjQrI35pqRaJF7Uw9LzrhwFSbU4YRU&usqp=CAU",
                  title: "Harry Potter",
                  description:
                      "Gryffindor, the boy who was chosen, the boy who lived",
                ),

                CharacterTile(
                  image:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUU8AHFLoJep-X6rUF9Hw0BSNosNpQciUNcctuIfjQrI35pqRaJF7Uw9LzrhwFSbU4YRU&usqp=CAU",
                ),
              ],
            ),
            // CharacterTile(
            //   image:
            //       "https://placeholderimagegenerator.com/wp-content/uploads/2024/12/Light-person-placeholder-round-corners_png_.png",
            //   title: "hermione granger",
            // ),
          ],
        ),
      ),
    );
  }
}
