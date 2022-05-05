import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodie_app/screens/welcome_screen.dart';
// import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelcomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFBA38),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(image: AssetImage('images/logo.png')),
            Text(
              'Nmeso\'s Place',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 25.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
