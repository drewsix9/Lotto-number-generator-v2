import 'package:flutter/material.dart';
import '../widgets/myNavDrawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyNavBar(),
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[200],
          foregroundColor: Colors.white,
          title: Center(child: Text('Lotto Number Generator')),
        ),
        body: Center(
          child: Text('Home Page'),
        ));
  }
}
