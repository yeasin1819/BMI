import 'package:flutter/material.dart';

class IconContent extends StatefulWidget {
  final title;
  final IconData icon;
  IconContent(this.title, this.icon);

  @override
  State<IconContent> createState() => _IconContentState();
}

class _IconContentState extends State<IconContent> {
  Color activeColor = Color(0xFFFFFFFF);

  Color inActiveColor = Color(0xFFAEB4C9);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF272A4E),
      child: FlatButton(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 70,
              color: inActiveColor,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: inActiveColor),
            ),
          ],
        ),
        onPressed: () {
          var temp = activeColor;
          activeColor = inActiveColor;
          inActiveColor = temp;
          setState(() {
            
          });
        },
      ),
    );
  }
}
