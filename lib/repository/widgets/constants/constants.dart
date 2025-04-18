
import 'dart:ffi';

import 'package:flutter/cupertino.dart';

class Constants{

  static edittxtHeading({required String title,bool isUppercase = false}){

    return Text(isUppercase ? title.toUpperCase():title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, letterSpacing: 1.8),
    );

  }

}