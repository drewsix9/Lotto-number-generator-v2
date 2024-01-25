import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_number_generator/main.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:provider/provider.dart';
import '../utils/models/generatedNumber.dart';
import '../widgets/myAppBar.dart';
import '../widgets/myNavDrawer.dart';
import '../widgets/myNumbersBuilder.dart';

class Page645 extends StatefulWidget {
  const Page645({super.key});

  @override
  State<Page645> createState() => _Page645State();
}

RandomNumbers randomNumbers = RandomNumbers();
List<String> tempRandNum = List.filled(6, '00');

class _Page645State extends State<Page645> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Scaffold(
        appBar: myAppBar(lotto.gameName[1]),
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
                  child: Image.asset(lotto.imagePath[1], width: 200.w),
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
                    setState(() {
                      tempRandNum = randomNumbers.generateNumbers(45);
                      String temp = value.joinIndex(1, tempRandNum);
                      value.addEntry(temp);
                      value.updateData();
                    });
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
