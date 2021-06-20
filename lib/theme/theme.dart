import 'package:flutter/material.dart';

final MaterialColor appPrimaryColor = Colors.green;

final heading = TextStyle(
    fontSize: 28, fontWeight: FontWeight.bold, color: appPrimaryColor.shade900);

final subheading = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: appPrimaryColor.shade900);

final button = ElevatedButton.styleFrom(
  elevation: 1,
  primary: appPrimaryColor.shade900,
  onPrimary: Colors.white,
  textStyle: TextStyle(color: Colors.white),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    side: BorderSide(color: appPrimaryColor),
  ),
);
