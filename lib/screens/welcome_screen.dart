import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:foodie_app/models/carousel.dart';
import 'package:foodie_app/screens/login_screen.dart';
import 'package:foodie_app/screens/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blue,
      body: Column(
        children: [
          // Expanded(child: CarouselWithIndicatorDemo()),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25.0),
                  bottomLeft: Radius.circular(25.0)),
            ),
            child: ImageSlideshow(
              indicatorColor: Color(0xFFFFBA38),
              autoPlayInterval: 3000,
              isLoop: true,
              children: [
                Image.asset('images/food1.jpg', fit: BoxFit.cover),
                Image.asset('images/food2.jfif', fit: BoxFit.cover),
                Image.asset('images/food3.jfif', fit: BoxFit.cover)
              ],
            ),
          )),
          Expanded(
            child: Container(
              color: Color(0xFFE2E9F1),
              child: Container(
                padding: EdgeInsets.only(left: 24.0, top: 32.0, right: 24.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25.0),
                      topLeft: Radius.circular(25.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Welcome Foodie',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w900,
                          fontSize: 24.0),
                    ),
                    const Text(
                      'Serving you mouth watering\ndishes, consistently.',
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 14.0),
                    ),
                    const SizedBox(
                      height: 48.0,
                    ),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.id);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Color(0xFFFFBA38),
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Color(0xFFFFBA38), width: 1.5),
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                      ),
                    ),
                    const SizedBox(
                      height: 24.0,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                      ),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          backgroundColor: Color(0xFFFFBA38),
                          padding: EdgeInsets.all(15.0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
