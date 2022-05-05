import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:foodie_app/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(image: AssetImage('images/logo_colored.png')),
                Text(
                  'Nmeso\'s Place',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFFBA38)),
                ),
              ],
            ),
            SizedBox(height: 64.0),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Email',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFFBA38), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFFBA38), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            GestureDetector(
              child: const Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
              onTap: () {},
            ),
            SizedBox(
              height: 38.0,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(
                  primary: Colors.white,
                  backgroundColor: Color(0xFFFFBA38),
                  padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(
              height: 24.0,
            ),
            Text(
              'Or',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFFFBA38),
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Social Media Login',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFFFBA38), fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.facebook,
                        color: Color(0xFF3B5998))),
                IconButton(
                    onPressed: () {}, icon: FaIcon(FontAwesomeIcons.apple)),
                IconButton(
                    onPressed: () {
                      print('I was pressed');
                    },
                    icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.blue)),
              ],
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                    text: 'Don\'t have an account?',
                    style: TextStyle(color: Colors.black)),
                TextSpan(
                    text: 'Signup',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      })
              ]),
            )
          ],
        ),
      ),
    );
  }
}
