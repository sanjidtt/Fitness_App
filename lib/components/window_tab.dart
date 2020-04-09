import 'package:fitness_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class WindowTab extends StatelessWidget {
  WindowTab({this.iconLogo, this.textHeading, this.backgroundCol});

  final Icon iconLogo;
  final String textHeading;
  final Color backgroundCol;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        /*boxShadow: [
          BoxShadow(
              color: Colors.black12,
              //offset: Offset(2, 2),
              blurRadius: 1.8,
              spreadRadius: 3.0),
        ],*/
        borderRadius: BorderRadius.circular(25.0),
        color: backgroundCol,
      ),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 29,
            child: SizedBox(),
          ),
          Expanded(
            flex: 25,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 19,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 58,
                  child: Text(textHeading),
                ),
                Expanded(
                  flex: 21,
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 25,
                  child: iconLogo,
                ),
                Expanded(
                  flex: 11,
                  child: SizedBox(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 24,
            child: SizedBox(),
          ),
          Expanded(
            flex: 122,
            child: Center(
              child: SleekCircularSlider(
                min: 0.0,
                max: 7000.0,
                initialValue: stepcount,
                appearance: CircularSliderAppearance(
                  angleRange: 360.0,
                  startAngle: 90,
                  customWidths: CustomSliderWidths(
                    progressBarWidth: 7.0,
                    trackWidth: 2.5,
                    handlerSize: 3.0,
                  ),
                  customColors: CustomSliderColors(
                    progressBarColor: Color(0XFFBB66CC),
                    trackColor: Color(0XFFF2F2F2),
                  ),
                  infoProperties: InfoProperties(modifier: percentageModifier),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
