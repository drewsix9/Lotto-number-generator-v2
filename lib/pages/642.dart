import 'package:flutter/material.dart';
import 'package:lotto_number_generator/widgets/myNavDrawer.dart';
import '../utils/models/generatedNumberModel.dart';

class Page642 extends StatefulWidget {
  const Page642({super.key});

  @override
  State<Page642> createState() => _Page642State();
}

RandomNumbers randomNumbers = RandomNumbers();

class _Page642State extends State<Page642> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        title: Center(child: Text('Lotto 6/42 Number Generator')),
      ),
      drawer: MyNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/642.png', width: 200),
            ),
            ElevatedButton(onPressed: () {
              setState(() {
                randomNumbers.generateNumbers(42);
                randomNumbers.printNumbers();
              });
            }, child: Text('Generate Number')),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(randomNumbers.number1.toString()),
                  const SizedBox(width: 10),
                  Text(randomNumbers.number2.toString()),
                  const SizedBox(width: 10),
                  Text(randomNumbers.number3.toString()),
                  const SizedBox(width: 10),
                  Text(randomNumbers.number4.toString()),
                  const SizedBox(width: 10),
                  Text(randomNumbers.number5.toString()),
                  const SizedBox(width: 10),
                  Text(randomNumbers.number6.toString()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
