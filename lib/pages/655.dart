import 'package:flutter/material.dart';
import '../widgets/myNavDrawer.dart';

class Page655 extends StatefulWidget {
  const Page655({super.key});

  @override
  State<Page655> createState() => _Page655State();
}

class _Page655State extends State<Page655> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow[900],
        foregroundColor: Colors.white,
        title: Center(child: Text('Grand Lotto 6/55 Number Generator')),
      ),
      drawer: MyNavBar(),
    );
  }
}
