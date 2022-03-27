import 'package:flutter/material.dart';

class MyInputTheme {
  TextStyle _buildTextStyle(Color color, {double size = 20.0}) {
    return TextStyle(
        color: color,
        fontSize: size,
        height: .6); // height of error text from bottom of bar
  }

  OutlineInputBorder _buildBorder(Color color, {double width = 1.0}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(color: color, width: width));
  }

  InputDecorationTheme theme() => InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: EdgeInsets.all(16.0),
      constraints: BoxConstraints(maxWidth: 340),
      enabledBorder: _buildBorder(Colors.black),
      errorBorder: _buildBorder(Colors.red),
      focusedErrorBorder: _buildBorder(Colors.red, width: 1.5),
      focusedBorder: _buildBorder(Colors.blue),
      disabledBorder: _buildBorder(Colors.grey),
      // text styles
      counterStyle: _buildTextStyle(Colors.grey, size: 14.0),
      errorStyle: _buildTextStyle(Colors.red, size: 14.0),
      helperStyle: _buildTextStyle(Colors.black, size: 14.0),
      hintStyle: _buildTextStyle(Colors.grey),
      labelStyle: _buildTextStyle(Colors.black, size: 14.0));
}
