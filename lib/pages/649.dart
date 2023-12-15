import 'package:flutter/material.dart';
import '../widgets/myNavDrawer.dart';

class Page649 extends StatefulWidget {
  const Page649({super.key});

  @override
  State<Page649> createState() => _Page649State();
}

class _Page649State extends State<Page649> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: Center(child: Text('Super Lotto 6/49 Number Generator')),
      ),
      drawer: MyNavBar(),
    );
  }
}
