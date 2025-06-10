import 'package:flutter/widgets.dart';

class Weightprovider with ChangeNotifier{
  int _weight = 50;
  int get weight => _weight;

  void increaseWeight(){
    _weight++;
    notifyListeners();
  }
  void decreaseWeight(){
    _weight--;
    notifyListeners();
  }


}