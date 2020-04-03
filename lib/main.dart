import 'package:fitness_app/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';
import 'top_bar.dart';
import 'login.dart';
import 'signup.dart';
void main(){
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curved Path',
      theme: appTheme,
      initialRoute: Signup.id,
      routes: {
        Login.id: (context) => Login(),
        Signup.id: (context) => Signup(),
      },
    );
  }
}


