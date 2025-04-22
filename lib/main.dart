// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/screen/main_screen/app_main_screen.dart';
import 'package:tink_flutter_proj/values/app_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: AppFonts.font,
      ), 
      title: 'Tink Offer: Business Assistant',
      debugShowCheckedModeBanner: false,
      //home: const OnboardingPage(),
      home: const AppMainScreen(),
    );
  }
}
