import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_joystick/joy_stick.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void callback(x, y) {
    log('callback x => $x and y $y');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: JoyStick(radius: 100.0, stickRadius: 20, callback: callback),
      ),
    );
  }
}
