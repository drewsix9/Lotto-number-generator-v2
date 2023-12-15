import 'package:flutter/material.dart';
import '../widgets/myNavDrawer.dart';

class Page658 extends StatefulWidget {
  const Page658({super.key});

  @override
  State<Page658> createState() => _Page658State();
}

class _Page658State extends State<Page658> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent[700],
        foregroundColor: Colors.white,
        title: Center(child: Text('Ultra Lotto 6/58 Number Generator')),
      ),
      drawer: MyNavBar(),
    );
  }
}
