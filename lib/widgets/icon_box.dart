import 'package:bmi_calculator/widgets/global_widget_and_method.dart';
import 'package:flutter/material.dart';

class IconContent extends StatefulWidget {
  final title;
  final IconData icon;
  final color;
  void Function(int) updateColor;
  final idx;
  IconContent(this.idx, this.title, this.icon, this.color,this.updateColor);

  @override
  State<IconContent> createState() => _IconContentState();
}

class _IconContentState extends State<IconContent> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
      widget.updateColor(widget.idx);
      },
      child: Card(
        color: Color(0xFF272A4E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 70,
              color: Color(widget.color),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: formateText(25, widget.color, true),
            ),
          ],
        ),
      ),
    ),
     );
  }
}
