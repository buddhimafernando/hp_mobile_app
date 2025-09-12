import 'package:flutter/cupertino.dart';
import 'package:hp_explore_mobile/data/models/spells_model/spells_model.dart';
import 'package:hp_explore_mobile/data/services/services.dart';

class SpellsProvider extends ChangeNotifier {
  final APIServices apiServices;

  SpellsProvider({required this.apiServices});

  List<SpellsModel> _spellsModelList = [];
  bool _isLoading = false;
  String? _error = "";

  List<SpellsModel> get spellsModelList => _spellsModelList;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> getSpells(String? spell) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await apiServices.getSpells();
      _spellsModelList = response;
    } catch (e) {
      _error = e.toString();
    }
    _isLoading = false;
    notifyListeners();
  }
}
