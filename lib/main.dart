import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_design/repository/screens/spalshscreen/SplashScreen.dart';

void main() {

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.amber, // Change to your desired color
      statusBarIconBrightness: Brightness.light, // Light icons for dark background
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Design',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),
      home: const Splashscreen(),
    );
  }
}


