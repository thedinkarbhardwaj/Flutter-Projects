import 'package:flutter/material.dart';

void main() {
  runApp(const Scrollable());
}


class Scrollable extends StatefulWidget {
  const Scrollable({super.key});

  @override
  State<Scrollable> createState() => _ScrollableState();
}

class _ScrollableState extends State<Scrollable> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Single Child ScrolllView"),
          backgroundColor: Colors.black12,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(30),
                width: 200,
                height: 300,
                color: Colors.red,
              ),
          
              Container(
                margin: EdgeInsets.all(30),
                width: 200,
                height: 300,
                color: Colors.green,
              ),
          
              Container(
                margin: EdgeInsets.all(30),
                width: 200,
                height: 300,
                color: Colors.yellow,
              ),
          
              Container(
                margin: EdgeInsets.all(30),
                width: 200,
                height: 300,
                color: Colors.blue,
              ),

              Text("Horizontal Scrollview", style: TextStyle(fontSize: 40),),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      color: Colors.black12,
                    ),

                    Container(
                      margin: EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      color: Colors.yellow,
                    ),

                    Container(
                      margin: EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),

                    Container(
                      margin: EdgeInsets.all(20),
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
