import 'package:flutter/material.dart';
import 'package:mutual_fund_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static String tag = '/';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? scaleController;
  Animation<double>? scaleAnimation;
  bool secondAnim = false;

  Color boxColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/splash_screen.jpg',
        fit: BoxFit.cover,
        // width: double.infinity,
        height: MediaQuery.of(context).size.height,
      )
    ],
  ),
);
  }

  void navigate() {
    Future.delayed(
      const Duration(seconds: 2),
      () async {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      },
    );
  }
}