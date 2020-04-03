import 'package:flutter/material.dart';
import 'colors.dart';
import 'top_bar.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curved Path',
      theme: appTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
       child: Column(children: <Widget>[TopBar(),TextField()], 
      ),
    ));
  }
}

