import 'package:flutter/material.dart';

Widget textWidget(
    {required String text,
    required Color color,
    required double size,
    FontWeight? weight}) {
  return Text(
    text,
    maxLines: 2,
    style: TextStyle(
        color: color,
        fontSize: size,
        fontWeight: weight,
        overflow: TextOverflow.ellipsis),
  );
}

Widget iconWidget({
  required IconData icon,
  required Color color,
  required double size,
}) {
  return Icon(
    icon,
    color: color,
    size: size,
  );
}
