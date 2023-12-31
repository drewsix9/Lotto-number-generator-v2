// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lotto_number_generator/pages/about_app_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AboutAppPage(),
    );
  }
}
