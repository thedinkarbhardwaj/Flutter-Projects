import 'package:flutter/material.dart';


void main() {
  runApp(const SecondClass());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateful Widget Example'),
        ),
        body: Center(
          child: Container(
           width: 200,
           height: 200,
           color: Colors.blue,
            child: Center(child: Text("Welcome to hello world", style: TextStyle(
              color: Colors.white,
              backgroundColor: Colors.red,
              fontWeight: FontWeight.w500,
              fontSize: 20
            ),)),
          ),
        )
      ),
    );
  }
}

class SecondClass extends StatefulWidget{
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _Second();

  }


class _Second extends State<SecondClass>{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("All Buttons"),
        ),
        body: Column(
          children: [
            TextButton(onPressed: (){
              print('Button clicked!');
            },
                onLongPress: (){
              print("LongPress Button");
                }, 
                child: Text("Text Button")),
            ElevatedButton(onPressed: (){print('Elevated Button clicked!');},
                child: Text("Elevated Button")),
            
            OutlinedButton(onPressed: (){
              print('Outlined Button clicked!');
            }, child: Text("Outlined Button")),

            IconButton(onPressed: (){
              print('Icon Button clicked!');
    }, icon: Icon(Icons.add)),
            
            Container(
                width: 100,
                height: 100,
                child: Image.asset('assests/images/a.jpg',))
          ],
        ),
      ),
    );
  }

}
