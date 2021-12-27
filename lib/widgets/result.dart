import 'package:bmi_calculator/widgets/global_widget_and_method.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final height, weight;

  Result(this.height, this.weight);
  
  double bmi() {
    return  weight / ((height * height) / 10000);
  }

  String short_message() {
    double res = weight / ((height * height) / 10000);
    if (res <= 18.5) return "Underweight";
    if (res >= 18.5 && res <= 24.9) return "Normal Weight";
    if (res >= 25 && res <= 29.9) return "Overweight";
    return "Obesity";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      home: Scaffold(
        backgroundColor: Color(0xff0c1234),
        appBar: AppBar(
          title: Text("BMI Calculator"),
          centerTitle: true,
          backgroundColor: Color(0xff10163b),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Card(
                color: Color(0xff272a4e),
                child: Column(
                  children: [
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Your Result",
                      style: formateText(40, 0xffffffff, true),
                    ),
                    
                    SizedBox(
                      height: 15,
                    ),
                    Text(bmi().toStringAsFixed(2),
                      style: TextStyle(
                          fontSize: 60,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Normal BMI Range:",
                      style: TextStyle(fontSize: 25, color: Color(0xff7e808f)),
                    ),
                    Expanded(
                      child: Text(
                        "18.5 - 24.9 kg/m\u00B2",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text( 
                      short_message(), 
                      style: TextStyle( 
                        fontSize: 25,
                        color: short_message() == "Normal Weight" ? Colors.green : Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        child: FlatButton(
                          minWidth: double.infinity,
                          height: 50,
                          color: Color(0xFFFF0067),
                          child: Text("RE-CALCULATE YOUR BMI",
                              style: TextStyle(
                                  fontSize: 25, color: Color(0xffffdceb))),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
