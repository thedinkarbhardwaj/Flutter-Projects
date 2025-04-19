import 'package:flutter/material.dart';
import 'package:food_design/domain/Utility.dart';
import 'package:food_design/repository/widgets/constants/constants.dart';

import '../../../domain/Constants/appcolors.dart';
import 'package:alerter/alerter.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {

  bool _isObscure = true; // Add this in your State class
  bool _isObscureConfirmPass = true; // Add this in your State class
  
  var nameController = TextEditingController(); 
  var emailController = TextEditingController(); 
  var passController = TextEditingController(); 
  var confirmpassController = TextEditingController(); 


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.black,
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 230,
              decoration: BoxDecoration(color: AppColors.black),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.arrow_back, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text("Sign Up",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        "Please sign up to get started",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
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
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Constants.edittxtHeading(title: "Name", isUppercase: true),

                        SizedBox(height:10),
                        TextFormField(
                          controller: nameController,
                          maxLength: 20,
                          maxLines: 1,
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              borderSide: BorderSide(
                                color: AppColors.black,
                                width: 1.6
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: AppColors.orange,
                                width: 1.6
                              ),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            )
                          ),
                        ),

                        // Email Field

                        Constants.edittxtHeading(title: "Email", isUppercase: true),
                        SizedBox(height:10),
                        TextFormField(
                          controller: emailController,
                          maxLength: 30,
                          maxLines: 1,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                            counterText: "",
                              prefixIcon: Icon(Icons.email),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: AppColors.black,
                                      width: 1.6
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.orange,
                                    width: 1.6
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              )
                          ),
                        ),

                        // Password Field

                        SizedBox(height:10),
                        Constants.edittxtHeading(title: "Password", isUppercase: true),
                        SizedBox(height:10),
                        TextFormField(
                          controller: passController,
                          obscureText: _isObscure,
                          maxLength: 30,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              counterText: "",
                              suffixIcon: IconButton(icon: Icon(
                                _isObscure ? Icons.visibility_off : Icons.visibility,
                                color: AppColors.black,
                              ), onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },),
                              
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: AppColors.black,
                                      width: 1.6
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.orange,
                                    width: 1.6
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              )
                          ),
                        ),

                        // Confirm Password Field

                        SizedBox(height:10),
                        Constants.edittxtHeading(title: "Confirm Password", isUppercase: true),
                        SizedBox(height:10),
                        TextFormField(
                          controller: confirmpassController,
                          obscureText: _isObscureConfirmPass,
                          maxLength: 30,
                          maxLines: 1,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              counterText: "",
                              suffixIcon: IconButton(icon: Icon(
                                _isObscureConfirmPass ? Icons.visibility_off : Icons.visibility,
                                color: AppColors.black,
                              ), onPressed: () {
                                setState(() {
                                  _isObscureConfirmPass = !_isObscureConfirmPass;
                                });
                              },),

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(
                                      color: AppColors.black,
                                      width: 1.6
                                  )
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppColors.orange,
                                    width: 1.6
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                              )
                          ),
                        ),

                        SizedBox(height: 30),
                        
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: ElevatedButton(onPressed: (){
                            
                            var result = validations();
                            
                            if(result){
                              Utility.showToast(msg: "Signup successfully");
                            }
                            
                          }, child: Text("Sign up"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.orange,
                            foregroundColor: AppColors.white
                          ),),
                        )

                      ],
                    ),
                  )
                ),
              ),
            )
      
          ],
        ),
      ),
    );
  }

  bool validations() {
    
    var value = false;
    
    if(nameController.text.isEmpty){

      Alerter.show(
        context,
        message: 'Name field is required',
        position: OverlayPosition.top,
        icon: Icons.error,
        backgroundColor: AppColors.red
      );

    }
    else if(emailController.text.isEmpty){
      Alerter.show(
          context,
          message: 'Email is required',
          position: OverlayPosition.top,
          icon: Icons.error,
          backgroundColor: AppColors.red
      );
    }
    else if(!emailController.text.contains("@")){

      Alerter.show(
          context,
          message: 'Email pattern is not valid',
          position: OverlayPosition.top,
          icon: Icons.error,
          backgroundColor: AppColors.red
      );

    }
    else if(passController.text.isEmpty){
      Alerter.show(
        context,
        message: 'Password field is required',
        position: OverlayPosition.top,
        icon: Icons.check_circle,
      );
    }
    else if(confirmpassController.text.isEmpty){
      Alerter.show(
        context,
        message: 'Confirm password field is required',
        position: OverlayPosition.top,
        icon: Icons.check_circle,
      );
    }
    else if(confirmpassController.text.toString() == passController.text.toString()){
      Alerter.show(
        context,
        message: 'Both password must be same',
        position: OverlayPosition.top,
        icon: Icons.check_circle,
      );
    }
    else{
      value = true;
    }

    return value;
    
  }
}
