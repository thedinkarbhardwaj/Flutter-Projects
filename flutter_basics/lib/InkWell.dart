import 'package:flutter/material.dart';

void main() {
  runApp(const Inkwelllll());
}

class Inkwelllll extends StatefulWidget {
  const Inkwelllll({super.key});

  @override
  State<Inkwelllll> createState() => _InkwelllllState();
}

class _InkwelllllState extends State<Inkwelllll> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Inkwelllll"),
        ),
        body: Container(
          child: InkWell(
            onTap: (){
              print("OnTap inkwell");
            },
            onDoubleTap: (){
              print("onDoubleTap inkwell");
            },
            onLongPress: (){
              print("onLongPress inkwell");

            },
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
        )
      ),
    );
  }

}
