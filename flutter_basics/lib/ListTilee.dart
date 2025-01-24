
import 'package:flutter/material.dart';

void main(){
  runApp(Listtilee());
}

class Listtilee extends StatefulWidget {
  const Listtilee({super.key});

  @override
  State<Listtilee> createState() => _ListtileeState();
}

class _ListtileeState extends State<Listtilee> {

  var arrNames = ["Ram","Shivam","Garry","Shiva","Ram","Shivam","Garry","Shiva","Ram","Shivam","Garry","Shiva","Ram","Shivam","Garry","Shiva","Ram","Shivam","Garry","Shiva"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
          backgroundColor: Colors.black12,
        ),
        body: ListView.builder(itemBuilder: (context, index) {

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assests/images/a.jpg'),
              backgroundColor: Colors.blue,
              child: Text("R"),
              radius: 20,
            ),
            title: Text(arrNames[index]),
            subtitle: Text("+91-9876543210", style: TextStyle(fontFamily: 'FontMain',
            fontSize: 12)),
            trailing: Icon(Icons.add),
          );
        },
        itemCount: arrNames.length,),
      ),
    );
  }
}
