import 'package:flutter/material.dart';

class AppBarClickNotifier extends ChangeNotifier {
  int indexMenu = 0;
  setMenuClick(int indexMenu) {
    this.indexMenu = indexMenu;
    notifyListeners();
  }
}
