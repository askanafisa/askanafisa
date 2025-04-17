import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = '/splash-screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to Dashboard_page after 3 seconds
    Future.delayed(
      const Duration(milliseconds: 3000), // Delay 3 seconds
      () {
        Navigator.pushReplacementNamed(context, '/Dashboard_page');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Animate(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'asset/logo_splash.png',
                width: 200,
              ),
            ],
          ).animate().fadeIn(duration: 2000.ms),
        ),
      ),
    );
  }
}
