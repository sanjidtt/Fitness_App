import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'result.dart';

enum Gender{
  Male, Female
}

Gender gender;
int height=180;
int weight=70;
int age=21;
double bmi;
String comment="";

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {

    //Color boxColorTwo=Color(0xFF1d1e33);
    //Gender gender;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BoxBmi(
                      boxColor: gender==Gender.Male?Color(0xFF1d1e33):Color(0xFF111328),
                      boxChild: BoxDetails(label: 'MALE', iconName: FontAwesomeIcons.mars),
                      onPressed: () {
                        setState(() {
                          gender=Gender.Male;
                        });
                      },
                    )
                  ),
                  Expanded(
                    child: BoxBmi(
                      boxColor: gender==Gender.Female?Color(0xFF1d1e33):Color(0xFF111328),
                      boxChild: BoxDetails(iconName: FontAwesomeIcons.venus, label: 'FEMALE'),
                      onPressed: () {
                        setState(() {
                          gender=Gender.Female;
                        });
                      },
                    ),
                  ),

                ],
              ),
            ),
            Expanded(
              child: BoxBmi(
                boxColor: Color(0xFF1d1e33),
                boxChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text('HEIGHT', style:TextStyle(color: Color(0xFF8D8E98),fontSize: 18.0),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(), style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900)),
                        //Text('180', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),),
                        Text('cm', style: TextStyle(color: Color(0xFF8D8E98),fontSize: 18.0)),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        min: 100,
                        max: 250,
                        value: height.toDouble(),
                        onChanged: (double value){
                          setState(() {
                            height=value.round();
                          });
                        },
                      ),
                    ),


                  ],



                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: BoxBmi(
                      boxColor: Color(0xFF1d1e33),
                      boxChild: Column(
                        children: <Widget>[
                          Text('WEIGHT', style:TextStyle(color: Color(0xFF8D8E98),fontSize: 18.0)),
                          Text(weight.toString(), style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                child: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                shape: CircleBorder(),
                                fillColor: Color(0xFFEB1555),
                                constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
                                elevation: 6.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                shape: CircleBorder(),
                                fillColor: Color(0xFFEB1555),
                                constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
                                elevation: 6.0,
                              ),

                            ],
                          )

                        ],
                      ),
                    )
                    ),
                  Expanded(
                    child: BoxBmi(
                      boxColor: Color(0xFF1d1e33),
                      boxChild: Column(
                        children: <Widget>[
                          Text('AGE', style:TextStyle(color: Color(0xFF8D8E98),fontSize: 18.0)),
                          Text(age.toString(), style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                child: Icon(FontAwesomeIcons.plus),
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                shape: CircleBorder(),
                                fillColor: Color(0xFFEB1555),
                                constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
                                elevation: 6.0,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              RawMaterialButton(
                                child: Icon(FontAwesomeIcons.minus),
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                shape: CircleBorder(),
                                fillColor: Color(0xFFEB1555),
                                constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
                                elevation: 6.0,
                              ),

                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),
            GestureDetector(
              onTap: () {
                bmi=weight/((height/100.0)*(height/100.0));
                print(bmi);

                if(bmi<18.5){
                  comment="YOUR BMI IS IN UNDERWEIGHT RANGE!";
                }else if(bmi>=18.5 && bmi<=24.9){
                  comment="YOUR BMI IS IN HEALTHY RANGE!";
                }else if(bmi>=25.0 && bmi<=29.9){
                  comment="YOUR BMI IS IN OVERWEIGHT RANGE!";
                }else{
                  comment="YOU ARE DANGEROUSLY OBESE!";
                }



                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Result(bmi: bmi, comment: comment)));

              },
              child: Container(
                child: Center(child: Text('CALCULATE', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white))),
                height: 50,
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top: 10.0)
              ),
            )


          ],
        ),
      ),


    );
  }
}


class BoxDetails extends StatelessWidget {

  final String label;
  final IconData iconName;
  
  BoxDetails({@required this.iconName, this.label});
  

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 60,
        ),
        SizedBox(height: 4.0,),
        Text(label, style: TextStyle(color: Color(0xFF8D8E98),fontSize: 15.0),),
      ],
    );
  }
}

class BoxBmi extends StatelessWidget {
  final Color boxColor;
  final Widget boxChild;
  final Function onPressed;

  BoxBmi({@required this.boxColor,this.boxChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: boxChild,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}

class BoxBmi2 extends StatelessWidget {
  final Color boxColor;
  final Widget boxChild;
  final Function onPressed;

  BoxBmi2({@required this.boxColor,this.boxChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: boxChild,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
      ),
    );
  }
}
