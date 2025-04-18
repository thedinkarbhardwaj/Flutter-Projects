import 'package:flutter/material.dart';
import 'package:food_design/domain/Constants/appcolors.dart';
import 'package:food_design/repository/apiCall/ApiCall.dart';
import 'package:food_design/repository/screens/forgotPass/ForgotPass.dart';
import 'package:food_design/repository/screens/spalshscreen/SplashScreen.dart';
import 'package:food_design/repository/widgets/constants/constants.dart';

import '../../../domain/Utility.dart';

import 'package:http/http.dart' as http;


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formKey = GlobalKey<FormState>(); // Add this in your State class
  final TextEditingController _emailController = TextEditingController(); // optional
  final TextEditingController _passController = TextEditingController(); // optional


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff1E1E2E),
      body: Column(
        children: [

          Container(
            width: double.infinity,
            height: 230,
            color: Color(0xff1E1E2E),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Log In", style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 10),
                Text("Please sign in to your existing account", style: TextStyle(fontSize: 14,
                fontWeight: FontWeight.w400, color: Colors.white),)
              ],
            ),
          ),

          Expanded(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Constants.edittxtHeading(title: "Email", isUppercase: true),
                    
                        SizedBox(height: 10),
                    
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.black
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.orange
                              )
                            ),
                            disabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                             borderSide: BorderSide(
                               color: AppColors.black
                             )
                            )
                          ),
                          validator: (value){
                    
                            if(value==null || value!.isEmpty){
                              Utility.showToast(msg: "Email is required");
                              return 'Email is requiredd';
                            }
                          },
                    
                        ),
                    
                        SizedBox(height: 30),
                    
                        Constants.edittxtHeading(title: "Password", isUppercase: true),
                    
                        SizedBox(height: 10),
                    
                        TextFormField(
                          controller: _passController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.black
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.orange
                              )
                            ),
                            disabledBorder: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(20),
                             borderSide: BorderSide(
                               color: AppColors.black
                             )
                            )
                          ),
                          obscureText: true,
                          validator: (value){
                            if(value == null || value!.isEmpty){
                              return 'Password field is required';
                            }
                          },
                        ),

                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Checkbox(value: false, onChanged: (value) {

                              },
                              ),
                              Text("Remember me")
                            ],),

                            InkWell(
                                onTap: () {
                                   Utility.showToast(msg: "Forgot Password");
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Forgotpass()),
                                  );
                                }
                                ,
                                child: Text("Forgot Password", style: TextStyle(color: AppColors.orange, fontSize: 14, fontWeight: FontWeight.w500),))


                          ],
                        ),
                
                        SizedBox(height: 30),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.orange,
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                // Form is valid, proceed
                                print("Email: ${_emailController.text}");

                                final result = await loginUser(_emailController.text.toString(), _passController.text.toString());

                                if (result['success']) {
                                  // Navigate to home screen or show success toast
                                  Utility.showToast(msg: "Login Success ✅");
                                  print(result['data']);
                                } else {
                                  // Show error
                                  Utility.showToast(msg: result['message'] ?? "Login failed");
                                }
                              }
                            },
                            child: Text("Login", style: TextStyle(color: AppColors.white, fontSize: 16,
                            letterSpacing: 1.4, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        SizedBox(height: 20),

                       Center(
                         child: RichText(text: TextSpan(
                           children: [

                             TextSpan(text: "Don’t have an account?",style: TextStyle(color: Colors.black)),
                             TextSpan(text: " Sign Up",style: TextStyle(color: AppColors.orange),)

                           ]
                         )),
                       ),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/fb.png"),
                            SizedBox(width: 20),
                            Image.asset("assets/images/twitter.png"),
                            SizedBox(width: 20),
                            Image.asset("assets/images/apple.png")
                          ],
                        )

                    
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}
