
import 'package:flutter/material.dart';

void main(){
  runApp(Cardd());
}

class Cardd extends StatefulWidget {
  const Cardd({super.key});

  @override
  State<Cardd> createState() => _CarddState();
}

class _CarddState extends State<Cardd> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card"),
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Card(
            color: Colors.blue,
            elevation: 12,
            shadowColor: Colors.yellow,
            child: Padding(
                padding: EdgeInsets.all(12),
                child: Text("Hello World", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),)),
          ),
        ),
      ),
    );
  }
}
