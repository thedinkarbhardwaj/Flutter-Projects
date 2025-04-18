import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main(){
  runApp(Dateformatt());
}

class Dateformatt extends StatefulWidget {
  const Dateformatt({super.key});

  @override
  State<Dateformatt> createState() => _DateformattState();
}

class _DateformattState extends State<Dateformatt> {
  @override
  Widget build(BuildContext context) {


    var time = DateTime.now();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Date Format"),
          centerTitle: true,
          backgroundColor: Colors.black12,
          titleTextStyle: TextStyle(color: Colors.orange, fontSize: 21),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Current time ${DateFormat('jms').format(time)} ",
              style: TextStyle(fontSize: 24),),
              ElevatedButton(onPressed: (){
                setState(() {
                  
                });
              }, child: Text("Refresh time"))
            ],
          ),
        ),
      ),
    );
  }
}
