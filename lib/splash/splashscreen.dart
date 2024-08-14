import 'package:flutter/material.dart';
import 'package:tt/onboard/intro.dart';



class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Navigate to the home screen after 3 seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => IntroPage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white, // Background color of the splash screen
      body: Center(
        child: Image.asset('images/wasoko.jpeg', width:400 , height:300), // Splash screen image
      ),
    );
  }
}
