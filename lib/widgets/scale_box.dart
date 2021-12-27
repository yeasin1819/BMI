import 'package:flutter/material.dart';

import 'global_widget_and_method.dart';

class ScaleBox extends StatelessWidget {
  final idx, title, value;
  void Function(int, double) updateScalValue;
  ScaleBox(this.idx, this.title, this.value, this.updateScalValue);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color(0xFF272A4E),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title, style: formateText(25, 0xFFAEB4C9, true)),
            Text(value.toString(), style: formateText(35, 0xffffffff, true)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  heroTag: null,
                  backgroundColor: Color(0xFF13193B),
                  onPressed: () {
                    if (value > 1) updateScalValue(idx, value - 1);
                  },
                  child: Icon(Icons.remove, color: Color(0xFFAEB4C9)),
                ),
                SizedBox(
                  width: 50,
                ),
                FloatingActionButton(
                  heroTag: null,
                  backgroundColor: Color(0xFF13193B),
                  onPressed: () {
                    if (value < 1001) updateScalValue(idx, value + 1);
                  },
                  child: Icon(Icons.add, color: Color(0xFFAEB4C9)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
