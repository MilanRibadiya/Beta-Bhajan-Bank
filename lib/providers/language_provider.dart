import 'package:flutter/material.dart';

class LanguageProvider with ChangeNotifier{
  bool language=true;

  changeLanguage(bool val){
    language=val;
    notifyListeners();
  }
}