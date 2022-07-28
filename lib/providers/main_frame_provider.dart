import 'package:flutter/material.dart';

class MainFrameProvider with ChangeNotifier{
  var functionList = [
    ["Home", "assets/svg/ic_home.svg"],
    ["Daily Darshan", "assets/svg/ic_daily_darshan.svg"],
    ["Mantralekhan", "assets/svg/ic_mantra_lekhan.svg"],
    ["Mantrajap", "assets/svg/ic_home.svg"],
    ["Books", "assets/svg/ic_books.svg"],
    ["Live Katha", "assets/svg/ic_live_katha.svg"],
    ["Gharshabha", "assets/svg/ic_gharsabha.svg"],
    ["Report", "assets/svg/ic_report.svg"],
    ["Download", "assets/svg/ic_download.svg"],
    ["About App", "assets/svg/ic_about_app.svg"],
    ["About Us", "assets/svg/ic_about_us.svg"],
    ["Other Apps", "assets/svg/ic_other_apps.svg"],
    ["Share App", "assets/svg/ic_share_app.svg"]
  ];


  var selectedFeature = 0;
  bool isOpen = false;


  changeSelectedPage(int pos){
    selectedFeature=pos;
    notifyListeners();
  }

  void openDrawer() {
      isOpen = true;
      notifyListeners();
  }

  void closeDrawer() {
      isOpen = false;
      notifyListeners();
  }
}