import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:income/home/view/home-screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => HomeScreen()},
    ),
  );
}
