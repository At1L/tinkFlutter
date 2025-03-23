import 'package:flutter/material.dart';
import 'package:tink_flutter_proj/screen/onboarding_screen/onboarding_page.dart';
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
      home: const OnboardingPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text('Home page title'),
      ),
      body: SafeArea(
        
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text('hello world')
            ],
          ),
        ),
      ),
    );
  }
}
