import 'package:flutter/material.dart';

void main() {
  runApp(TextFild());
}

class TextFild extends StatefulWidget {
  const TextFild({super.key});

  @override
  State<TextFild> createState() => _TextFildState();
}

class _TextFildState extends State<TextFild> {
  var editController = TextEditingController();
  var passController = TextEditingController();

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
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: editController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.blue,
                      )),
                      disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.grey,
                      )),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      suffixIcon: IconButton(
                          onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.black,
                      )),
                ),
                Container(height: 30),
                TextField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  controller: passController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.red)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
                ElevatedButton(onPressed: (){

                  String email = editController.text.toString();
                  String pass = passController.text;

                  print("Email $email Pass $pass");

                }, child: Text("Click Me!"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
