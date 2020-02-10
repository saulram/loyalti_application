import 'package:flutter/material.dart';

class AppBarProvider with ChangeNotifier {
  int _appbarindex = 0;

  int getIndex() {
    return _appbarindex;
  }

  setindex(int nuevoIndex) {
    _appbarindex = nuevoIndex;
    notifyListeners();
  }
}
