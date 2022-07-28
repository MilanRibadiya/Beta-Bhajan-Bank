import 'dart:async';

import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/screens/main_frame.dart';
import 'package:bhajan_bank/screens/member_selection.dart';
import 'package:bhajan_bank/screens/niyam_submission.dart';
import 'package:bhajan_bank/screens/registration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),()=>{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Registration()))
    });
  }
  @override
  Widget build(BuildContext context) {

    var size=MediaQuery.of(context).size;

    Future.delayed(Duration.zero,(){
      context.read<SizeProvider>().setSize(size.height, size.width);
      context.read<SizeProvider>().createFontSize();
    });

    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/temple_logo.png"),
            const Text("Splash Screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}

