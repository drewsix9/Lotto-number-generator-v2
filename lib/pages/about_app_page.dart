// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/myAppBar.dart';
import '../widgets/myNavDrawer.dart';

class AboutAppPage extends StatefulWidget {
  const AboutAppPage({super.key});

  @override
  State<AboutAppPage> createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyNavBar(),
      appBar: myAppBar(''),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'About the App',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Lotto Number Generator is designed to help lottery enthusiasts generate random numbers for their Lotto 6/42 games. With a simple and intuitive interface, generating lottery numbers has never been easier.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Features:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Generate six random numbers for the following Lotto games:\n'
              '   • Lotto 6/42\n'
              '   • Mega Lotto 6/45\n'
              '   • Super Lotto 6/49\n'
              '   • Grand Lotto 6/55\n'
              '   • Ultra Lotto 6/58\n'
              '• Easy to use interface\n'
              '• Quick number generation',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Developed by dewsix9',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
