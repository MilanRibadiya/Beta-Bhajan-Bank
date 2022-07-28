import 'dart:io';

import 'package:bhajan_bank/models/member_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class RegistrationProvider with ChangeNotifier{

  TextEditingController surnameCont=TextEditingController();
  TextEditingController nameCont=TextEditingController();
  TextEditingController fatherCont=TextEditingController();
  TextEditingController dateCont=TextEditingController();
  bool isMale=true;
  File? image;


  Future pickImage() async {
    try {
      var img = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (img == null) return;

        final imageTemp = File(img.path);
        image = imageTemp;
        notifyListeners();
    } on PlatformException catch (e) {
      debugPrint("Failed : $e");
    }
  }

  selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDatePickerMode: DatePickerMode.year,
      initialDate: DateTime.now(),
      firstDate: DateTime(1965),
      lastDate: DateTime(2025),
    );
    if (selected != null) {
      dateCont.text = selected.day.toString().padLeft(2, '0') +
          "-" +
          selected.month.toString().padLeft(2, '0') +
          "-" +
          "${selected.year}";
      notifyListeners();
    }
  }

  setMale(){
    isMale=true;
    notifyListeners();
  }

  setFemale(){
    isMale=false;
    notifyListeners();
  }

  registerUser(){
    // debugPrint(fatherCont.text);
    // MemberModel memberModel=MemberModel(1, surnameCont.text, nameCont.text, fatherCont.text, dateCont.text, isMale ? "M" : "F");

    // debugPrint(memberModel.name+memberModel.fatherName+memberModel.surname+memberModel.dob+memberModel.gender+memberModel.userId.toString());
  }

}