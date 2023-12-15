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
        appBar: myAppBar('Lotto Number Generator'),
        body: Center(
          child: Text('Home Page'),
        ));
  }
}
