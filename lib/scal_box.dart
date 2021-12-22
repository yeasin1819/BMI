import 'package:flutter/material.dart';

class ScaleBox extends StatelessWidget {
  final box_title;
  double defaultValue;

  ScaleBox(this.box_title, this.defaultValue);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF272A4E),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            box_title,
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFFAEB4C9)),
          ),

          Text(
            defaultValue.toString(),
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          //  SizedBox(height: 15,),
          Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Color(0xFF13193B),
                  onPressed: () {},
                  child: Icon(Icons.remove, color: Color(0xFFAEB4C9)),
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  backgroundColor: Color(0xFF13193B),
                  onPressed: () {},
                  child: Icon(Icons.add, color: Color(0xFFAEB4C9)),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
