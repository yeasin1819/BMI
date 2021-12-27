import 'package:flutter/material.dart';

import 'widgets/input_page.dart';

int main() {
  runApp(MyApp());
  return 0;
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI Calculator",
      home: InputPage(),
    );
  }
}