import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_number_generator/utils/bloc/lotto_database.dart';
import 'package:provider/provider.dart';

import '../utils/models/generated_number.dart';
import '../widgets/my_app_bar.dart';
import '../widgets/my_nav_drawer.dart';
import '../widgets/my_numbers_builder.dart';

class LottoPageBuilder extends StatefulWidget {
  final String gameImagePath;
  final String gameName;
  final String gameDescription;
  final int gameMaxNumber;
  const LottoPageBuilder({
    super.key,
    required this.gameImagePath,
    required this.gameName,
    required this.gameDescription,
    required this.gameMaxNumber,
  });

  @override
  State<LottoPageBuilder> createState() => _LottoPageBuilderState();
}

RandomNumbers randomNumbers = RandomNumbers();
List<String> tempRandNum = List.filled(6, '00');

class _LottoPageBuilderState extends State<LottoPageBuilder> {
  get gameImagePath => widget.gameImagePath;
  get gameName => widget.gameName;
  get gameDescription => widget.gameDescription;
  get gameMaxNumber => widget.gameMaxNumber;

  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: const Color.fromARGB(255, 250, 249, 246),
        appBar: myAppBar(gameName),
        drawer: const MyNavBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // lotto image
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                  child: Image.asset(gameImagePath, width: 200.w),
                ),

                // create a builder widget for the 6 numbers
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // create a builder widget for the 6 numbers
                      buildNumberWidgets(tempRandNum),
                    ],
                  ),
                ),

                // generate button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32.0.r),
                    ),
                  ),
                  onPressed: () {
                    tempRandNum = randomNumbers.generateNumbers(42);
                    String temp = value.joinIndex(0, tempRandNum);
                    value.addEntry(temp);
                  },
                  child: Text('Generate Number',
                      style: TextStyle(
                          fontSize: 15.sp, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
