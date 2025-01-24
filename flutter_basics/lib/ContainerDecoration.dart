
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ContainerDecoration());
}

class ContainerDecoration extends StatefulWidget {
  const ContainerDecoration({super.key});

  @override
  State<ContainerDecoration> createState() => _ContainerDecorationState();
}

class _ContainerDecorationState extends State<ContainerDecoration> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container Decoration"),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.black,
                width: 2
              ),
              boxShadow: [BoxShadow(
                blurRadius: 11,
                color: Colors.grey,
                spreadRadius: 12
              )
            ]),
          ),
        ),
      ),
    );
    
  }
}