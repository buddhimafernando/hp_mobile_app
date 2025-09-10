import 'package:flutter/material.dart';
import 'package:hp_explore_mobile/data/models/books_model/books_model.dart';
import 'package:hp_explore_mobile/data/models/houses_model/houses_model.dart';
import 'package:hp_explore_mobile/data/services/services.dart';

class BooksProvider extends ChangeNotifier {
  final APIServices apiServices;

  BooksProvider({required this.apiServices});

  List<BooksModel> _booksModelList = [];
  bool _isLoading = false;
  String? _error = "";

  List<BooksModel> get booksModelList => _booksModelList;
  bool get isLoading => _isLoading;
  String? get error => _error;

  Future<void> getBooksList() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      final response = await apiServices.getBooks();
      _booksModelList = response;
    } catch (e) {
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }
}
