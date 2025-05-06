import 'package:flutter/material.dart';
import 'package:test_grade_remon/utils/app_colours.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName='SplashScreen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigateToNextScreen();
    });
  }

  Future<void> _navigateToNextScreen() async {
    await Future.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, '/onboarding');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.jpeg',
              width: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'DRIVE MATE',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: AppColors.blueColor,
              ),
            ),
            const SizedBox(height: 150),
            Text(
              'Your Smart Companion \n'
                  'for a Smoother Journey!'
                  .split('')
                  .join(' '),
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            )

          ],
        ),
      ),
    );
  }
}