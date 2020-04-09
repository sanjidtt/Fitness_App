import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StepsScreen extends StatefulWidget {
  static String id = 'steps_screen';

  @override
  _StepsScreenState createState() => _StepsScreenState();
}

class _StepsScreenState extends State<StepsScreen> {
  @override
  void initState() {
    choice = 1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 20,
                child: SizedBox(),
              ),
              Expanded(
                flex: 25,
                child: Text(
                  "Hey Sanjid1",
                  style: TextStyle(
                    //fontSize: 25,
                    fontFamily: 'Oswald',
                    color: Color(0XFF6A6A75),
                  ),
                ),
              ),
              Expanded(
                flex: 23,
                child: SizedBox(),
              ),
              Expanded(
                flex: 21,
                child: Text(
                  "you walked 25km today",
                  style: TextStyle(
                    //fontSize: 25,
                    fontFamily: 'Oswald',
                    color: Color(0XFF6A6A75),
                  ),
                ),
              ),
              Expanded(
                flex: 20,
                child: SizedBox(),
              ),
              Expanded(
                flex: 41,
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, ChatScreen.id);
                  },
                  child: Container(
                    //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                    width: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Color(0XFF41DE99),
                          Color(0XFF3CC0AE),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(32.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          offset: Offset(5, 5),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'SET GOAL',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Oswald',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 50,
                child: SizedBox(),
              ),
              Expanded(
                flex: 32,
                //Day Week Month
                child: Text("Day Week Month"),
              ),
              Expanded(
                flex: 50,
                child: SizedBox(),
              ),
              Expanded(
                flex: 22,
                child: Text("Total Average Goal"),
              ),
              Expanded(
                flex: 40,
                child: SizedBox(),
              ),
              Expanded(
                flex: 22,
                child: Text("Steps"),
              ),
              Expanded(
                flex: 40,
                child: SizedBox(),
              ),
              Expanded(
                flex: 22,
                child: Text("Distance"),
              ),
              Expanded(
                flex: 40,
                child: SizedBox(),
              ),
              Expanded(
                flex: 326,
                child: Container(
                  color: Colors.deepPurple,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
