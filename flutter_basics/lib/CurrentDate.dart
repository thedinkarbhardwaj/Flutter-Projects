
import 'package:flutter/material.dart';

 void main(){
   runApp(Currentdate());
 }

class Currentdate extends StatefulWidget {
  const Currentdate({super.key});

  @override
  State<Currentdate> createState() => _CurrentdateState();
}

class _CurrentdateState extends State<Currentdate> {
  @override
  Widget build(BuildContext context) {

    var time = DateTime.now();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fetch Current date"),
          centerTitle: true,
          backgroundColor: Colors.black12,
        ),
        body: Column(
          children: [
            Text("Current Date $time"),
            Container(height: 30,),
            Text("Current day ${time.day}")
          ],
        ),
      ),
    );
  }
}
