import 'package:flutter/material.dart';
import 'package:bhajan_bank/constants/text_size.dart';

class SizeProvider with ChangeNotifier{

  var height,width;

  setSize(double height,double width){
    this.height=height;
    this.width=width;
    notifyListeners();
  }

  createFontSize(){
    f13=width*0.03;
    f14=width*0.04;
    f145=width*0.045;
    f15=width*0.05;
    f155=width*0.055;
    f16=width*0.06;
    f17=width*0.07;
    f18=width*0.08;
    f19=width*0.09;
    f20=width*0.10;
    f21=width*0.11;
  }


  double getHeight(){
    return height;
  }

  double getWidth(){
    return width;
  }
}