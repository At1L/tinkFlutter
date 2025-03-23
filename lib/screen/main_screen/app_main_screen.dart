import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/values/app_colors.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreen();
}

class _AppMainScreen extends State<AppMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      
    );
  }
}