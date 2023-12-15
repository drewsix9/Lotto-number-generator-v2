import 'package:flutter/material.dart';
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
      drawer: MyNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/655.png', width: 200),
            ),
            Container(
              padding: EdgeInsets.all(20),
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
                primary: Colors.redAccent,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  randomNumbers.generateNumbers(55);
                });
              },
              child: Text('Generate Number',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
