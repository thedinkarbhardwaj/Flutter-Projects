
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ExpandedWidget());
}

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanded widget"),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 100,
                color: Colors.red,
              ),
            ),
            Container(
              width: 50,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              height: 100,
              color: Colors.blue,
            ),
          ],
        )
      ),
    );

  }
}