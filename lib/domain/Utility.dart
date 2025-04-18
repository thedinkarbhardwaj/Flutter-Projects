

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utility{

  static showToast({required String msg}){

    return Fluttertoast.showToast(
        msg: "$msg",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );

  }

}