
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_design/domain/Constants/appcolors.dart';
import 'package:food_design/domain/Utility.dart';

void main(){
  runApp(Forgotpass());
}

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {

  var _emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [


            Container(
              width: double.infinity,
              height: 230,
              color: Color(0xff1E1E2E),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 20, // optional, for size
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        Navigator.pop(context); // goes back to the previous screen
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(child: Text("Forgot Password", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.white))),
                  SizedBox(height: 10),
                  Center(
                    child: Text("Please sign in to your existing account", style: TextStyle(fontSize: 14,
                        fontWeight: FontWeight.w400, color: Colors.white),),
                  )
                ],
              ),
            ),

            Expanded(child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: AppColors.orange,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30), topLeft: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Email", textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),),

                    SizedBox(height: 10),

                    TextFormField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: AppColors.black
                          )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.white,
                            width: 2.0
                          ),
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),

                    SizedBox(height: 20),

                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {

                          var result = validations();

                          if(result){
                            Fluttertoast.showToast(msg: "Send code successfully");
                          }

                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8), // Apply here too
                          ),
                        ),
                        child: Text("Send Code"),
                      ),
                    )


                  ],
                ),
              ),
            ))

          ],
        ),
      ),
    );
  }

  bool validations() {

    var value = true;

    if(_emailcontroller.text.isEmpty){

      Utility.showToast(msg: "Email is required");
      value = false;
    }

    return value;

  }
}
