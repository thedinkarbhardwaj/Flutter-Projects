import 'package:flutter/material.dart';
import 'package:food_design/repository/screens/login/LoginScreen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    var listPagesViewModel = [
      PageViewModel(
        title: "Title of blue page",
        body: "Welcome to the app! This is a description on a page with a blue background.",
        image: Center(
          child: Image.network(
            "https://cdn.pixabay.com/photo/2023/01/10/00/17/italy-7708551_640.jpg",
            height: 175.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.white,
        ),
      ),
      PageViewModel(
        title: "Title of blue page2",
        body: "Welcome to the app! This is a description on a page with a blue background.",
        image: Center(
          child: Image.network("https://cdn.pixabay.com/photo/2023/01/10/00/17/italy-7708551_640.jpg", height: double.infinity),
        ),
        decoration: const PageDecoration(
          pageColor: Colors.white,
        ),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          pages: listPagesViewModel,
          showSkipButton: true,
          showNextButton: false,
          skip: const Text("Skip"),
          done: const Text("Done"),
          onDone: () {
            // Navigate or do something

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) {
                return LoginScreen();
              }),
            );

          },
        ),
      ),
    );
  }
}
