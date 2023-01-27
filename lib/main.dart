import 'package:academic/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 113, 173, 192),
        backgroundColor: const Color.fromARGB(255, 183, 230, 244),
        accentColor: const Color.fromARGB(255, 79, 101, 162),
      ),
      home: LoginPage(),
    ),
  );
}
