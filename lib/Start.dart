import 'package:flutter/material.dart';
import 'package:water/WaterHistory.dart';
import 'package:water/WaterHome.dart';
import 'package:water/WaterNotify.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {

  int _currentIndex=0;
  final List<Widget> children = [
    WaterHome(),
    WaterHistory(),
    WaterNotify()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: children[_currentIndex],
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text('Water Intake'),
        ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
            backgroundColor: Colors.lightBlue[800]
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('HISTORY'),
              backgroundColor: Colors.lightBlue[800]
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              title: Text('NOTIFY'),
              backgroundColor: Colors.lightBlue[800]
          )
        ],
        onTap: (index) {
          setState(() {
              _currentIndex=index;
          }
          );
        },
      ),

    );
  }
}
