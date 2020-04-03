import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';
import 'top_bar.dart';
import 'login.dart';
import 'signup.dart';
void main() {
  runApp(MaterialApp(
    
    title: 'REGISTRATION SCREEN',
      initialRoute:signup.id,
      routes: {
        signup.id: (context) => signup(),
        login.id: (context) => login(),
    },
  ));
}

