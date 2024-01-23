// ignore_for_file: prefer_const_constructors
import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lotto_number_generator/pages/642.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/utils/models/Lotto_class.dart';
import 'package:provider/provider.dart';

void main() async {
  // init the hive
  await Hive.initFlutter();

  //open a box
  var box = await Hive.openBox('lottobox');

  // wrapped the app with the provider
  runApp(ChangeNotifierProvider(
    create: (context) => LottoDataBase(),
    child: const MyApp(),
  ));
}

Lotto lotto = Lotto(); // instance of Lotto class

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _lottobox = Hive.box('lottobox');
  final logger = Logger();

  LottoDataBase? lottoDataBase;

  @override
  void initState() {
    super.initState();

    lottoDataBase = LottoDataBase();

    // Check if the box is open
    if (Hive.isBoxOpen('lottobox')) {
      logger.i('The box is open');
      // if the box is empty, create initial data
      if (_lottobox.get('HISTORY') == null) {
        lottoDataBase?.createInitialData();
      } else {
        // else load the data
        lottoDataBase?.loadData();
      }
    } else {
      logger.i('The box is not open');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Page642(),
    );
  }
}
