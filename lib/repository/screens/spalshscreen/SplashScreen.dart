import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_design/domain/Utility.dart';

import '../onboardingsceen/OnBoardingScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();


}

class _SplashscreenState extends State<Splashscreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    Timer(Duration(seconds: 3), (){

      Utility.showToast(msg: "Splash Screen Timer run");

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Onboardingscreen(),));
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber, // 👈 Background color for visibility
        body: Align(
            alignment: Alignment.center,
            child: Image.asset("assets/images/logo.png", height: 200)),

      );

  }
}
