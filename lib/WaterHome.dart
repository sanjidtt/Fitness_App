import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class WaterHome extends StatefulWidget {

  var date = DateTime.now();
  int dailyGoal=2000;
  double suggested=1800;
  String _weight= '50';
  double intake=600;
  String drinkAmount;

  List<String> weight = ['21','22','23','24','25','26','27','28','29','30','31','32','33','34',
    '35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57',
    '58','59','60','61','62','63','64','65','66','67','68','69','70','71','72','73','74','75','76','77','78','79','80',
    '81','82','83','84','85','86','87','88','89','90','91','92','93','94','95','96','97','98','99','100','101','102',
    '103','104','105','106','107','108','109','110','111','112','113','114','115','116','117','118','119','120',
    '121','122','123','124','125','126','127','128','129','130','131','132','133','134','135','136','137','138','139','140'
  ];

  @override
  _WaterHomeState createState() => _WaterHomeState();
}


class _WaterHomeState extends State<WaterHome> {

  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: SingleChildScrollView(
                child: Column(  //EKHANE
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('TODAY: ' + widget.date.day.toString() +'/'+ widget.date.month.toString() +'/'+ widget.date.year.toString(), style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20, fontStyle: FontStyle.italic)),
                    Text('Intake:', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,)),
                    LinearProgressIndicator(
                      backgroundColor: Colors.black,
                      value: widget.intake/widget.dailyGoal,
                    ),
                    Center(
                      child: Text('${widget.intake}' + 'mL/' + '${widget.dailyGoal}' + 'mL', style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15,)),
                    ),
                    Container(
                      width: 150.0,
                      child: TextField(
                        style: TextStyle(color: Colors.black),
                        controller: textController,
                        decoration: InputDecoration(
                          hintText: 'enter intake amount(mL)',
                          hintStyle: TextStyle(color: Colors.black,fontStyle: FontStyle.italic, fontSize: 10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 30,
                      child: FlatButton(
                          color: Colors.grey,
                          textColor: Colors.black,
                          padding: EdgeInsets.all(1.0),
                          splashColor: Colors.blueAccent,
                          child: Text('ADD', style: TextStyle(fontWeight: FontWeight.bold, fontSize:12),),
                          onPressed: (){
                            setState(() {
                              widget.drinkAmount=textController.text;
                              textController.clear();
                              double x=double.parse(widget.drinkAmount);
                              widget.intake+=x;
                            });
                          },
                      ),
                    ),

                  ],
                ),
              ),

            ),

          ),
          Expanded(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: SingleChildScrollView(
                child: Column( //EKHANE
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('WEIGHT(kg)',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),),
                    Theme(
                      data: Theme.of(context).copyWith(
                        canvasColor: Colors.white,
                      ),
                      child: DropdownButton<String>(
                        value: widget._weight,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 20,
                        elevation: 5,
                        style: TextStyle(color: Colors.black, fontSize:10),
                        focusColor: Colors.white,

                        underline: Container(
                          height: 1,
                          color: Colors.blue,
                        ),
                        onChanged: (String newValue){
                          setState(() {
                            widget._weight=newValue;
                             int w=int.parse(widget._weight);
                             widget.suggested= w/30;
                             widget.suggested*=1000;
                          });

                        },
                        items: widget.weight.map<DropdownMenuItem<String>>((String value){
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),

                    Text('DAILY GOAL: ' + widget.dailyGoal.toString() + 'mL',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.blueAccent,
                        overlayColor: Color(0x29EB1555),
                        activeTrackColor: Colors.black,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 15.0),
                      ),
                      child: Slider(
                        min: 500,
                        max: 5000,
                        value: widget.dailyGoal.toDouble(),
                        onChanged: (double value){
                          setState(() {
                            widget.dailyGoal=value.round();
                          });
                        },
                      ),
                    ),
                    Text('SUGGESTED: ' + widget.suggested.toStringAsFixed(0) + 'mL',style:TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12),),

                  ],
                ),
              ),
            ),

          )
        ],
      ),
    );
  }
}

