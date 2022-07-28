import 'package:bhajan_bank/providers/language_provider.dart';
import 'package:bhajan_bank/providers/main_frame_provider.dart';
import 'package:bhajan_bank/providers/member_provider.dart';
import 'package:bhajan_bank/providers/niyam_submission_provider.dart';
import 'package:bhajan_bank/providers/registration_provider.dart';
import 'package:bhajan_bank/providers/size_provider.dart';
import 'package:bhajan_bank/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(providers: [
        ChangeNotifierProvider(create: (_)=>RegistrationProvider()),
        ChangeNotifierProvider(create: (_)=>MainFrameProvider()),
        ChangeNotifierProvider(create: (_)=>LanguageProvider()),
        ChangeNotifierProvider(create: (_)=>MemberProvider()),
        ChangeNotifierProvider(create: (_)=>SizeProvider()),
        ChangeNotifierProvider(create: (_)=>NiyamSubmissionProvider()),
      ],
          child:const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xff006E97),
        statusBarIconBrightness:Brightness.light,
    ),
    );

    return MaterialApp(
      title: 'Swaminarayan Bhajan Bank',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
