// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:lotto_number_generator/main.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:provider/provider.dart';
import '../utils/models/generatedNumber.dart';
import '../widgets/myAppBar.dart';
import '../widgets/myNavDrawer.dart';
import '../widgets/myNumbersBuilder.dart';

class Page642 extends StatefulWidget {
  const Page642({super.key});

  @override
  State<Page642> createState() => _Page642State();
}

RandomNumbers randomNumbers = RandomNumbers();
List<String> tempRandNum = List.filled(6, '00');

class _Page642State extends State<Page642> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Scaffold(
        appBar: myAppBar('Lotto 6/42'),
        drawer: MyNavBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // lotto image
                Container(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(lotto.imagePath[0], width: 200),
                ),

                // create a builder widget for the 6 numbers
                Container(
                  padding: EdgeInsets.all(20),
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
                      borderRadius: BorderRadius.circular(32.0),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      tempRandNum = randomNumbers.generateNumbers(42);
                      String temp = value.joinIndex(0, tempRandNum);
                      value.addEntry(temp);
                      value.updateData();
                    });
                  },
                  child: Text('Generate Number',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
