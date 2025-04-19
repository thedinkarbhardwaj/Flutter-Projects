import 'package:flutter/material.dart';
import 'package:food_design/domain/Constants/appcolors.dart';
import 'package:food_design/domain/Utility.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  final String email;

  const OtpScreen(this.email, {super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  var _isLoading = false;

  @override
  void dispose() {
    _otpController.dispose(); // Always dispose controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SafeArea(
        child: Column(
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
                      child: Text("Verification",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        "We have sent a code to your email ${widget.email}",
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
                decoration: BoxDecoration(
                  color: AppColors.orange,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Enter OTP", style: TextStyle(fontSize: 16)),
                      SizedBox(height: 20),
                      Pinput(
                        length: 4,
                        controller: _otpController,
                      ),
                      SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            String enteredOtp = _otpController.text.trim();


                            if (enteredOtp.isEmpty) {
                              Utility.showToast(msg: "Enter OTP");
                            } else if (enteredOtp != "1234") {
                              Utility.showToast(msg: "Incorrect OTP");
                              _isLoading = true;
                              setState(() {

                              });
                            } else {
                              Utility.showToast(msg: "OTP Verified");

                              // Navigate to next screen or perform logic
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text("Verify"),
                        ),
                      ),
                      SizedBox(height: 20),
                      Visibility(
                        visible: _isLoading,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: AppColors.black,
                            strokeWidth: 1.6,
                            semanticsLabel: "Checking",
                          ),
                        ),
                      )


                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
