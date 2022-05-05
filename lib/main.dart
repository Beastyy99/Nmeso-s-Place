import 'package:flutter/material.dart';
import 'package:foodie_app/screens/login_screen.dart';
import 'package:foodie_app/screens/signup_screen.dart';
import 'package:foodie_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Poppins'),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        // ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
