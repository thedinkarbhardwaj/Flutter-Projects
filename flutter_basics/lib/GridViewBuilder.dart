import 'package:flutter/material.dart';

void main(){
  runApp(Gridviewbuilderrr());
}

class Gridviewbuilderrr extends StatefulWidget {
  const Gridviewbuilderrr({super.key});

  @override
  State<Gridviewbuilderrr> createState() => _GridviewbuilderrrState();
}

class _GridviewbuilderrrState extends State<Gridviewbuilderrr> {

  var arrColor = [
    Colors.red,
    Colors.grey,
    Colors.black,
    Colors.yellow,
    Colors.blue,
    Colors.green
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("GridView Builder"),
        ),
        body:
        GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
        mainAxisSpacing: 11,
        crossAxisSpacing: 11),
            itemBuilder: (context, index) {
            return  Container(
                width: 200,
                color: arrColor[index],
              );
            },
        itemCount: arrColor.length,),
      ),
    );
  }
}
