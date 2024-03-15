import 'package:flutter/material.dart';
import 'package:mutual_fund_app/screens/home_screen.dart';
import 'package:mutual_fund_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Financial Calculators',
      color: Colors.white,
      theme: ThemeData(
        primaryColor: Colors.orangeAccent,
      ),
      home: const SplashScreen(),
    );
  }
}
