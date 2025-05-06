import 'package:flutter/material.dart';

import 'Splash_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drive Mate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        //OnBoardingScreen.routeName:(context)=>OnBoardingScreen(),
        //LoginScreen.routeName:(context)=>LoginScreen(),
        //RegisterScreen.routeName:(context)=>RegisterScreen()

      },
    );
  }
}