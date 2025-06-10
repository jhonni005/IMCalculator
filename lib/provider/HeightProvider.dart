import 'package:flutter/cupertino.dart';

class Heightprovider with ChangeNotifier {
  double _height = 170;
  double get height => _height;

  void setHeight(double newHeight) {
    _height = newHeight;
    notifyListeners();
  }
}
