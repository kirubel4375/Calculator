

import 'package:flutter/material.dart';

class SomeFunctions extends ChangeNotifier{

  List<String> pastExpressions = [];

  void addtoList(String value){
    pastExpressions.add(value);
    notifyListeners();
  }

  void clearList(){
    pastExpressions = [];
    notifyListeners();
  }
}