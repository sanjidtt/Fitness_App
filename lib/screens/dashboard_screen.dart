import 'package:fitness_app/components/window_tab.dart';
import 'package:fitness_app/screens/steps_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardScreen extends StatefulWidget {
  static String id = 'dashboard_screen';

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              color: Color(0XFFF2F2F2),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 125,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 603,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 38,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 134,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 200,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, StepsScreenNew.id);
                                  /*
                                  setState(
                                    () {
                                      stepcount += 1000;
                                    },
                                  );
                                  */
                                },
                                child: WindowTab(
                                  textHeading: "Steps",
                                  iconLogo: Icon(
                                    FontAwesomeIcons.running,
                                    size: 24.0,
                                    color: Colors.black,
                                  ),
                                  backgroundCol: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 135,
                              child: WindowTab(
                                textHeading: "Sleep",
                                iconLogo: Icon(
                                  FontAwesomeIcons.moon,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                                backgroundCol: Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 178,
                              child: WindowTab(
                                textHeading: "Calorie",
                                iconLogo: Icon(
                                  FontAwesomeIcons.fire,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                                backgroundCol: Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 31,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 134,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex: 200,
                              child: WindowTab(
                                textHeading: "Water",
                                iconLogo: Icon(
                                  FontAwesomeIcons.glassWhiskey,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                                backgroundCol: Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 213,
                              child: WindowTab(
                                textHeading: "Diet",
                                iconLogo: Icon(
                                  FontAwesomeIcons.utensils,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                                backgroundCol: Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: SizedBox(),
                            ),
                            Expanded(
                              flex: 100,
                              child: WindowTab(
                                textHeading: "BMI",
                                iconLogo: Icon(
                                  FontAwesomeIcons.calculator,
                                  size: 24.0,
                                  color: Colors.black,
                                ),
                                backgroundCol: Colors.white,
                              ),
                            ),
                            Expanded(
                              flex: 30,
                              child: SizedBox(),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 38,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 84,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
