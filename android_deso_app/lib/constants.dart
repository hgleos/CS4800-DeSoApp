import 'package:flutter/material.dart';

final appPrimaryColor = Colors.blue[600];

// text style for the headings of various pages
final TextStyle boldHeading = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

// text style for the buttons of various pages
final TextStyle buttonTextStyle = TextStyle(fontSize: 15, color: Colors.white);

// elevated button style for buttons of various pages
final ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  primary: Color(0xff178de8),
  fixedSize: Size(270, 55),
  textStyle: TextStyle(fontSize: 20, color: Colors.white)
);