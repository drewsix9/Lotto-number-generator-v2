import 'package:flutter/material.dart';
import '../widgets/myNavDrawer.dart';

class Page645 extends StatefulWidget {
  const Page645({super.key});

  @override
  State<Page645> createState() => _Page645State();
}

class _Page645State extends State<Page645> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        foregroundColor: Colors.white,
        title: Center(child: Text('Mega Lotto 6/45 Number Generator')),
      ),
      drawer: MyNavBar(),
    );
  }
}
