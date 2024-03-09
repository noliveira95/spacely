import 'package:flutter/material.dart';

class FavoritesModel extends ChangeNotifier {
  final List<String> _favorites = [];

  List<String> get favorites => _favorites;

  void addFavorite(String planetName) {
    _favorites.add(planetName);
    notifyListeners();
  }

  void removeFavorite(String planetName) {
    _favorites.remove(planetName);
    notifyListeners();
  }
}
