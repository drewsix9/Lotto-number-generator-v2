// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lotto_number_generator/pages/642.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/utils/models/Lotto_class.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('lottobox');

  runApp(const MyApp());
}

Lotto lotto = Lotto(); // instance of Lotto class
LottoDataBase lottoDataBase =
    LottoDataBase(); // instance of LottoDataBase class

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
