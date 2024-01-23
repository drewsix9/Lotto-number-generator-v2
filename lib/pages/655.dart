import 'package:flutter/material.dart';
import 'package:lotto_number_generator/main.dart';
import '../widgets/myAppBar.dart';
import '../widgets/myNavDrawer.dart';
import '../utils/models/generatedNumber.dart';
import '../widgets/myNumbersBuilder.dart';

class Page655 extends StatefulWidget {
  const Page655({super.key});

  @override
  State<Page655> createState() => _Page655State();
}

RandomNumbers randomNumbers = RandomNumbers();

class _Page655State extends State<Page655> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Lotto 6/55'),
      drawer: const MyNavBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // lotto image
              Container(
                padding: const EdgeInsets.all(20),
                child: Image.asset(lotto.imagePath[3], width: 200),
              ),

              // create a builder widget for the 6 numbers
              Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // create a builder widget for the 6 numbers
                    buildNumberWidgets(randomNumbers.numbers),
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
                    randomNumbers.generateNumbers(55);
                    lottoDataBase.entries.add(randomNumbers.numbers);
                    lottoDataBase.updateData();
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
    );
  }
}
