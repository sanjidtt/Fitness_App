import 'package:fitness_app/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class StepsScreenNew extends StatefulWidget {
  static String id = 'steps_screen_2';

  @override
  _StepsScreenNewState createState() => _StepsScreenNewState();
}

class _StepsScreenNewState extends State<StepsScreenNew> {
  @override
  void initState() {
    choice = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              IndexedStack(
                index: choice,
                children: <Widget>[
                  GenListView(),
                  GenListView(),
                  GenListView(),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    flex: 49,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 50,
                    child: button(0, "Day"),
                  ),
                  Expanded(
                    flex: 25,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 50,
                    child: button(1, "Week"),
                  ),
                  Expanded(
                    flex: 25,
                    child: SizedBox(),
                  ),
                  Expanded(
                    flex: 50,
                    child: button(2, "Month"),
                  ),
                  Expanded(
                    flex: 49,
                    child: SizedBox(),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              IndexedStack(
                index: choice,
                children: <Widget>[
                  DayTwoListView(),
                  WeekTwoListView(),
                  MonthListView(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector button(int num, String str) {
    return GestureDetector(
      onTap: () {
        print("Pressed 3, index 2");
        setState(() {
          choice = num;
        });
        //Navigator.pushNamed(context, ChatScreen.id);
      },
      child: Container(
        //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
        //width: 160,
        height: 30,
        decoration: BoxDecoration(
          color: choice == num ? Color(0XFFF3F3F3) : Colors.white,
          borderRadius: BorderRadius.circular(32.0),
        ),
        child: Center(
          child: Text(
            str,
            style: TextStyle(
              color: choice == num ? Colors.black : Colors.black26,
              fontFamily: 'Oswald',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class GenListView extends StatefulWidget {
  @override
  _GenListViewState createState() => _GenListViewState();
}

class _GenListViewState extends State<GenListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              flex: 38,
              child: SizedBox(),
            ),
            Expanded(
              flex: 188,
              child: Text(
                "Hey Sanjid1",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Oswald',
                  color: Color(0XFF6A6A75),
                ),
              ),
            ),
            Expanded(
              flex: 149,
              child: SizedBox(),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 38,
              child: SizedBox(),
            ),
            Expanded(
              flex: 337,
              child: Text(
                "you walked 20km today",
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Oswald',
                  color: Color(0XFF6A6A75),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("Pressed 1, index 0");
                setState(() {
                  choice = 0;
                });
                //Navigator.pushNamed(context, ChatScreen.id);
              },
              child: Container(
                //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                width: 160,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0XFF7360FF),
                      Color(0XFF977EFF),
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
          ],
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class DayTwoListView extends StatefulWidget {
  @override
  _DayTwoListViewState createState() => _DayTwoListViewState();
}

class _DayTwoListViewState extends State<DayTwoListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        FittedBox(
          child: DataTable(
            columns: [
              DataColumn(label: Text("")),
              DataColumn(label: Text("Total")),
              DataColumn(label: Text("Average")),
              DataColumn(label: Text("Goal")),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("Steps")),
                  DataCell(Text("7000")),
                  DataCell(Text("4500")),
                  DataCell(Text("6000")),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("Distance")),
                  DataCell(Text("10")),
                  DataCell(Text("6.5")),
                  DataCell(Text("7")),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: _AnimatedLiquidCircularProgressIndicator(),
        ),
      ],
    );
  }
}

class WeekTwoListView extends StatefulWidget {
  @override
  _WeekTwoListViewState createState() => _WeekTwoListViewState();
}

class _WeekTwoListViewState extends State<WeekTwoListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        FittedBox(
          child: DataTable(
            columns: [
              DataColumn(label: Text("")),
              DataColumn(label: Text("Total")),
              DataColumn(label: Text("Average")),
            ],
            rows: [
              DataRow(
                cells: [
                  DataCell(Text("Steps")),
                  DataCell(Text("7000")),
                  DataCell(Text("4500")),
                ],
              ),
              DataRow(
                cells: [
                  DataCell(Text("Distance")),
                  DataCell(Text("10")),
                  DataCell(Text("6.5")),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

class MonthListView extends StatefulWidget {
  @override
  _MonthListViewState createState() => _MonthListViewState();
}

class _MonthListViewState extends State<MonthListView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 50,
          width: 50,
          color: Colors.greenAccent,
        ),
      ],
    );
  }
}

class _AnimatedLiquidCircularProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _AnimatedLiquidCircularProgressIndicatorState();
}

class _AnimatedLiquidCircularProgressIndicatorState
    extends State<_AnimatedLiquidCircularProgressIndicator>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = 3000;
    return Center(
      child: SizedBox(
        width: 150.0,
        height: 150.0,
        child: LiquidCircularProgressIndicator(
          value: (3000 / 6000),
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation(Color(0XFF7360FF)),
          center: Text(
            "${percentage.toStringAsFixed(0)}",
            style: TextStyle(
              color: Colors.deepPurpleAccent[100],
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
