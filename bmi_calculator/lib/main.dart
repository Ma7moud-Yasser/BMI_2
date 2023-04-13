import 'package:bmi_calculator/modules/bmi/bmi_home.dart';
import 'package:bmi_calculator/modules/bmi/bmi_result_screen.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/modules/login/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen() ,
      //home: BmiResult() ,
    );
  }
}
