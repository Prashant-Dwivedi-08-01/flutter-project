import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MyTheme {
  static InputDecoration textFieldStyle({String label = "", String hint = ""}) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      focusColor: Colors.black,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.black,
          width: 1.2,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      labelText: label,
      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
      hintText: hint,
      hintStyle: TextStyle(fontSize: 18),
      alignLabelWithHint: true,
    );
  }

  //Colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBluishColor = Color(0xff403b58);
}
