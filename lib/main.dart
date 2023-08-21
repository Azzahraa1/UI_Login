import 'package:flutter/material.dart';
import 'package:ui_login/page/page.dart';
import 'package:ui_login/shared/shared.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown ,
        primaryColor: primaryColor,
        canvasColor: Colors.transparent,
      ),
      home: WelcomePage(),
    );
  }
}