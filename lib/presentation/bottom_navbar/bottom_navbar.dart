import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/presentation/screens/books/books_screen.dart';
import 'package:hp_explore_mobile/presentation/screens/characters/characters_screen.dart';
import 'package:hp_explore_mobile/presentation/screens/houses/houses_screen.dart';
import 'package:hp_explore_mobile/presentation/screens/spells/spells_screen.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _selectedIndex = 0;

  final List<Widget> widgetOptions = const [
    CharactersScreen(),
    HousesScreen(),
    BooksScreen(),
    SpellsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color.fromARGB(255, 180, 153, 69),
        unselectedItemColor: Colors.blueGrey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Characters',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Houses'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Books'),
          BottomNavigationBarItem(
            icon: Icon(Icons.star_border_purple500),
            label: 'Spells',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
