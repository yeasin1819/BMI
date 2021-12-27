import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'icon_box.dart';
import 'scale_box.dart';
import 'result.dart';
import 'global_widget_and_method.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int active_idx = 0;
  double height = 110.0;

  List<int> colorList = [0xffffffff, 0xFFAEB4C9];
  List<double> scaleValue = [40.0, 30.0];

  void updateActiveStatus(current_idx) {
    colorList[active_idx] = 0xFFAEB4C9; //Assigning inactive color
    colorList[current_idx] = 0xffffffff;
    active_idx = current_idx;
    setState(() {});
  }

  void updateScaleValue(idx, new_value) {
    scaleValue[idx] = new_value;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMT Calculator",
      home: Scaffold(
        backgroundColor: Color(0xFF13193B),
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Color(0xff10163b),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconContent(0, "Male", Icons.male, colorList[0],
                        updateActiveStatus),
                    IconContent(1, "Female", Icons.female, colorList[1],
                        updateActiveStatus),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  color: Color(0xFF272A4E),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Text("HEIGHT", style: formateText(25, 0xFFAEB4C9, true)),
                      SizedBox(
                        height: 5,
                      ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                       children: [ 
                          Text(height.round().toString(),
                          style: formateText(45, 0xffffffff, true)),
                          Text(" cm", style: formateText(25, 0xFFAEB4C9, true),)
                       ],
                     ),
                      Slider(
                        value: height,
                        max: 260,
                        min: 15,
                        thumbColor: Color(0xfffe0167),
                        activeColor: Color(0xff636479),
                        label: height.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ScaleBox(0, "WEIGHT", scaleValue[0], updateScaleValue),
                    ScaleBox(1, "AGE", scaleValue[1], updateScaleValue),
                  ],
                ),
              ),
              FlatButton(
                minWidth: double.infinity,
                height: 50,
                color: Color(0xFFFF0067),
                child: Text("CALCULATE YOUR BMI",
                    style: formateText(25, 0xffffccf4, false)),
                onPressed: () {
                  Navigator.of(context).push(
                    CustomPageRoute(
                      builder: (BuildContext context) {
                        return Result(height, scaleValue[0]);
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
