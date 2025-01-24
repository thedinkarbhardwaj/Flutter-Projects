
import 'package:flutter/material.dart';

void main(){
  runApp(Listvieew());
}

class Listvieew extends StatefulWidget {
  const Listvieew({super.key});

  @override
  State<Listvieew> createState() => _ListvieewState();
}

class _ListvieewState extends State<Listvieew> {
  
  var arrNames = ["Dinkar","Ram","Aman","Raj","Garry","Harry"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ListView",
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          title: Text("ListView Builder"),
        ),
        body: ListView.separated(itemBuilder: (context, index) {
          return Text(arrNames[index], style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),);
        },
        itemCount: arrNames.length,
          separatorBuilder: (context, index) {
          return Divider(height: 29,thickness: 3);
          },
        scrollDirection: Axis.vertical,)
      ),
    );
  }
}
