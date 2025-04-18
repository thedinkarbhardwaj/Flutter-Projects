import 'package:flutter/material.dart';

void main() {
  runApp(GridViewCount());
}

class GridViewCount extends StatefulWidget {
  const GridViewCount({super.key});

  @override
  State<GridViewCount> createState() => _GridViewCountState();
}

class _GridViewCountState extends State<GridViewCount> {
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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Count"),
          backgroundColor: Colors.black12,
        ),
        body: Column(
          children: [
            Container(
              height: 200,
              child: GridView.count(
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                crossAxisCount: 4,
                children: [
                  Container(
                    color: arrColor[0],
                  ),
                  Container(
                    color: arrColor[1],
                  ),
                  Container(
                    color: arrColor[2],
                  ),
                  Container(
                    color: arrColor[3],
                  ),
                  Container(
                    color: arrColor[4],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40,),
            Text("Gridview Extent"),
            SizedBox(height: 20),
            Container(
              height: 200,
              child: GridView.extent(
                maxCrossAxisExtent: 50, // Each item will have at most this width
                mainAxisSpacing: 11,
                crossAxisSpacing: 11,
                children: List.generate(10, (index) => Container(
                  color: Colors.orange,
                  child: Center(child: Text("Item $index")),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
