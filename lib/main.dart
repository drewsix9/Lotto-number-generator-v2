import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  @override
  void initState() {
    // Check if the box is open
    if (Hive.isBoxOpen('lottobox')) {
      logger.i('The box is open');
      // if the box is empty, create initial data
      if (_lottobox.get('HISTORY') == null) {
        context.read<LottoDataBase>().createInitialData();
      } else {
        // else load the data
        context.read<LottoDataBase>().loadData();
      }
    } else {
      logger.i('The box is not open');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Page642(),
      ),
      designSize: const Size(415, 923),
    );
  }
}
