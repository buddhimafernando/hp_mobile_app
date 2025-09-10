import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/screens/books/books_provider.dart';
import 'package:provider/provider.dart';

import '../../widgets/character_tile.dart';

class BooksScreen extends StatefulWidget {
  const BooksScreen({super.key});

  @override
  State<BooksScreen> createState() => _BooksScreenState();
}

class _BooksScreenState extends State<BooksScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.microtask(() => context.read<BooksProvider>().getBooksList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<BooksProvider>();
    return Scaffold(
      appBar: AppBar(title: Text("Books")),
      body:
          provider.isLoading
              ? Center(child: CupertinoActivityIndicator())
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
                      itemCount: provider.booksModelList.length,
                      itemBuilder: (context, index) {
                        final character = provider.booksModelList[index];
                        return CharacterTile(
                          image: character.cover,
                          title: character.originalTitle,
                          // description: character.description,
                        );
                      },
                    ),
                  ],
                ),
              ),
    );
  }
}
