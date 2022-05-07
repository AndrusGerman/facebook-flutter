import 'package:flutter/material.dart';

class AppBarClickMenuNotifier extends ChangeNotifier {
  int indexMenu = 0;

  setMenuClick(int indexMenu) {
    this.indexMenu = indexMenu;
    notifyListeners();
  }
}
