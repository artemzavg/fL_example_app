import 'package:fl_example/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: MainScreen(),
      ),
    ),
  );
}