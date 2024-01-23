// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lotto_number_generator/pages/642.dart';
import 'package:lotto_number_generator/utils/models/Lotto_class.dart';

void main() {
  runApp(const MyApp());
}

Lotto lotto = Lotto(); // instance of Lotto class

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
      home: Page642(),
    );
  }
}
