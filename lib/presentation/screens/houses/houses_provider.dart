import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/data/models/houses_model/houses_model.dart';
import 'package:hp_explore_mobile/data/services/services.dart';

class HousesProvider extends ChangeNotifier {
  final APIServices apiServices;

  HousesProvider({required this.apiServices});

  List<HousesModel> _housesModelList = [];
  bool _isLoading = false;
  String? _error = "";

  List<HousesModel> get housesModelList => _housesModelList;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> getHousesList() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await apiServices.getHouses();
      _housesModelList = response;
    } catch (e) {
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
