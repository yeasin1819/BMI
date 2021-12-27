import 'package:flutter/material.dart';

TextStyle formateText(font_size, color, boldStatus) {
  return TextStyle(
    fontSize: font_size,
    color: Color(color),
    fontWeight: boldStatus ? FontWeight.bold : FontWeight.normal,
  );
}

class CustomPageRoute extends MaterialPageRoute {
  CustomPageRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 0);
}
