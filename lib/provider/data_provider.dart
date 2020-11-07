import 'dart:ffi';

import 'package:flutter/foundation.dart';

class DataProvider extends ChangeNotifier {
  String _name;
  double _weight;
  double _height;

// set and get name
  void setNameString(String name) {
    this._name = name;
    notifyListeners();
  }

  String getNameString() {
    return this._name;
  }

  // set and get weight
  void setWeightDouble(double height) {
    this._weight = height;
    notifyListeners();
  }

  double getWeightDouble() {
    return this._weight;
  }

  // set and get Height
  void setHeightDouble(double height) {
    this._height = height;
    notifyListeners();
  }

  double getHeightDouble() {
    return this._height;
  }
}
