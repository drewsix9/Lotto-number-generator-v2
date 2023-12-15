import 'package:flutter/material.dart';
import '../widgets/myNavDrawer.dart';
import '../utils/models/generatedNumber.dart';

class Page649 extends StatefulWidget {
  const Page649({super.key});

  @override
  State<Page649> createState() => _Page649State();
}

RandomNumbers randomNumbers = RandomNumbers();

class _Page649State extends State<Page649> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
        title: Center(child: Text('Lotto 6/49 Number Generator')),
      ),
      drawer: MyNavBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Image.asset('assets/images/649.png', width: 200),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // create a builder widget for the 6 numbers
                  Row(
                    children: [
                      for (var i = 0; i < 6; i++)
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              randomNumbers.numbers[i],
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                    ],
                  )
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
                  randomNumbers.generateNumbers(49);
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
