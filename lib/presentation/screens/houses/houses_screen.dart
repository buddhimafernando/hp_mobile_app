import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/core/constants/image_paths/image_paths.dart';
import 'package:hp_explore_mobile/presentation/screens/houses/houses_provider.dart';
import 'package:hp_explore_mobile/presentation/widgets/character_tile.dart';
import 'package:provider/provider.dart';

class HousesScreen extends StatefulWidget {
  const HousesScreen({super.key});

  @override
  State<HousesScreen> createState() => _HousesScreenState();
}

class _HousesScreenState extends State<HousesScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.microtask(() => context.read<HousesProvider>().getHousesList());
    super.initState();
  }

  final List<String> housesLogos = [
    HouseLogoPaths.gryffindor,
    HouseLogoPaths.hufflepuff,
    HouseLogoPaths.ravenclaw,
    HouseLogoPaths.slytherin,
  ];

  @override
  Widget build(BuildContext context) {
    final housesProvider = context.watch<HousesProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Houses")),
      body:
          housesProvider.isLoading
              ? Center(child: CupertinoActivityIndicator())
              : housesProvider.error != null
              ? Center(child: Text(housesProvider.error!))
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
                      itemCount: housesProvider.housesModelList.length,
                      itemBuilder: (context, index) {
                        final house = housesProvider.housesModelList[index];
                        final image = house.house.toLowerCase();
                        final logo =
                            housesLogos[index] ??
                            HouseLogoPaths.defaultHouseLogo;

                        return CharacterTile(
                          isHouse: false,
                          house: logo,
                          title: house.house,
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
