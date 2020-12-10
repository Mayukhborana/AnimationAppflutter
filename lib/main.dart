import 'package:AnimationApp/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
