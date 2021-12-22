import 'package:bmi_calculator/icon_content.dart';
import 'package:bmi_calculator/scal_box.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

int main() {
  runApp(HomePage());
  return 0;
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final activeCardColor = Colors.red;
  double _currentSliderValue = 20;

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
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(8, 5, 0, 5),
                        child: IconContent("Male", Icons.male),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 8, 5),
                        child: IconContent("Female", Icons.female),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(8, 0, 8, 5),
                  //width: double.infinity,
                  // height: 250,
                  child: Card(
                    color: Color(0xFF272A4E),
                    child: Column(
                      children: [
                        SizedBox(height: 5,),
                        Text(
                          "HEIGHT",
                          style:
                              TextStyle(fontSize: 25, color: Color(0xFFAEB4C9)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          _currentSliderValue.round().toString(),
                          style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Slider(
                          value: _currentSliderValue,
                          max: 100,
                          //divisions: 5,
                          label: _currentSliderValue.round().toString(),
                          onChanged: (double value) {
                            setState(() {
                              _currentSliderValue = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        // width: 250,
                        //height: 250,
                        padding: EdgeInsets.fromLTRB(8, 5, 0, 5),
                        child: ScaleBox("WEIGHT", 60),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        // width: 250,
                        //height: 250,
                         padding: EdgeInsets.fromLTRB(0, 5, 8, 5),
                        child: ScaleBox("AGE", 40),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Color(0xFFFF0067),
                width: double.infinity,
                height: 50,
                child: FlatButton(
                  onPressed: () {},
                  child: Text("Calculate Your BMI",
                      style: TextStyle(fontSize: 25)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
