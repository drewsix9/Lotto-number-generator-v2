import 'package:flutter/material.dart';
import 'package:lotto_number_generator/main.dart';
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

class _Page645State extends State<Page645> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Lotto 6/45'),
      drawer: const MyNavBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                child: Image.asset(lotto.imagePath[1], width: 200),
              ),
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
                    randomNumbers.generateNumbers(45);
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
