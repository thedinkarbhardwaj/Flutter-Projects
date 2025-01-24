import 'package:flutter/material.dart';


void main() {
  runApp(const ColumnAndRow());
}

class ColumnAndRow extends StatefulWidget {
  const ColumnAndRow({super.key});

  @override
  State<ColumnAndRow> createState() => _ColumnAndRowState();
}

class _ColumnAndRowState extends State<ColumnAndRow> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Column&Row"),
        ),
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("A", style: TextStyle(fontSize: 25),),
            Text("B", style: TextStyle(fontSize: 25),),
            Text("C", style: TextStyle(fontSize: 25),),
            Text("D", style: TextStyle(fontSize: 25),),
            Text("E", style: TextStyle(fontSize: 25),),
            ElevatedButton(onPressed: (){},
                child: Text("Click Me!"))

          ],
        )
      ),
      ),
    );
  }
}
