import 'package:flutter/material.dart';
import 'package:lotto_number_generator/main.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:provider/provider.dart';
import '../widgets/myNavDrawer.dart';
import '../widgets/myAppBar.dart';
import '../utils/models/generatedNumber.dart';
import '../widgets/myNumbersBuilder.dart';

class Page649 extends StatefulWidget {
  const Page649({super.key});

  @override
  State<Page649> createState() => _Page649State();
}

RandomNumbers randomNumbers = RandomNumbers();
List<String> tempRandNum = List.filled(6, '00');

class _Page649State extends State<Page649> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Scaffold(
        appBar: myAppBar('Lotto 6/49'),
        drawer: const MyNavBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // lotto image
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Image.asset(lotto.imagePath[2], width: 200),
                ),

                // create a builder widget for the 6 numbers
                Container(
                  padding: const EdgeInsets.all(20),
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
                      tempRandNum = randomNumbers.generateNumbers(49);
                      String temp = value.joinIndex(2, tempRandNum);
                      value.addEntry(temp);
                      value.updateData();
                    });
                  },
                  child: const Text('Generate Number',
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
