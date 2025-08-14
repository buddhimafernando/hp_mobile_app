import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/data/models/characters_model/characters_model.dart';
import 'package:hp_explore_mobile/data/services/services.dart';

class CharactersProvider extends ChangeNotifier {
  final APIServices apiServices;

  CharactersProvider({required this.apiServices});

  List<CharactersModel> _characterList = [];
  bool _isLoading = false;
  String? _error = "";

  List<CharactersModel> get charactersList => _characterList;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // method to get characters list
  Future<void> getCharactersList(String? character) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await apiServices.getCharacters(character);
      _characterList = response;
      print(charactersList);
    } catch (e) {
      _error = e.toString();
      print(_error);
    }

    _isLoading = false;
    notifyListeners();
  }
}
