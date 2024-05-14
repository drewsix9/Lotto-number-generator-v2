import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:logger/logger.dart';
import 'package:lotto_number_generator/pages/lotto_page_builder.dart';
import 'package:lotto_number_generator/utils/bloc/lotto_database.dart';
import 'package:lotto_number_generator/utils/models/lotto_assets.dart';
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
      builder: (context, child) => MaterialApp(
          theme: ThemeData(
            colorScheme: const ColorScheme.light(
              background: Color.fromARGB(255, 250, 249, 246),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: LottoPageBuilder(
            gameImagePath: gameImagePath[0],
            gameName: gameName[0],
            gameDescription: gameDescription[0],
            gameMaxNumber: gameMaxNumber[0],
          )),
      designSize: const Size(412, 915),
    );
  }
}
