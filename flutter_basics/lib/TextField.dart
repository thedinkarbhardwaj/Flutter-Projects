import 'package:flutter/material.dart';


void main(){
  runApp(TextFild());
}

class TextFild extends StatefulWidget {
  const TextFild({super.key});

  @override
  State<TextFild> createState() => _TextFildState();
}


class _TextFildState extends State<TextFild> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("TextField"),
          centerTitle: true,
          backgroundColor: Colors.black12,
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField (
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      )
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey,
                      )
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    ),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye)),
                    prefixIcon: Icon(Icons.email, color: Colors.black,)
                  ),

                ),
               Container(height: 30),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),

                    )
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
