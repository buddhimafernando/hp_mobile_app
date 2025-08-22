import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/core/theme/theme.dart';

class CharacterTile extends StatelessWidget {
  final String? image;
  final bool? isHouse;
  final String? house;
  final String? title;
  final String? description;
  const CharacterTile({
    super.key,
    this.image,
    this.title,
    this.description,
    this.isHouse = true,
    this.house,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // constraints: BoxConstraints(
      //   maxWidth: MediaQuery.of(context).size.width * 0.41,
      // ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child:
                  isHouse!
                      ? Image.network(
                        image ??
                            "https://placeholderimagegenerator.com/wp-content/uploads/2024/12/Light-person-placeholder-round-corners_png_.png",
                        fit: BoxFit.cover,
                      )
                      : Image.asset(house ?? ""),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title ?? "",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            description ?? "",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: AppTheme.hogwartsTheme.hintColor,
            ),
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
