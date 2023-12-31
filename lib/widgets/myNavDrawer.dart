// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../pages/642.dart';
import '../pages/645.dart';
import '../pages/649.dart';
import '../pages/655.dart';
import '../pages/658.dart';
import '../pages/about_app_page.dart';

class MyNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        const SizedBox(height: 20),
        ListTile(
          leading: Image.asset(
            'assets/images/642.png',
            width: 50,
            height: 50,
          ),
          title: Text(
            'Lotto 6/42',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page642()),
            );
          },
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: Image.asset(
            'assets/images/645.png',
            width: 50,
            height: 50,
          ),
          title: Text(
            'Mega Lotto 6/45',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page645()),
            );
          },
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: Image.asset(
            'assets/images/649.png',
            width: 50,
            height: 50,
          ),
          title: Text(
            'Super Lotto 6/49',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page649()),
            );
          },
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: Image.asset(
            'assets/images/655.png',
            width: 50,
            height: 50,
          ),
          title: Text(
            'Grand Lotto 6/55',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page655()),
            );
          },
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: Image.asset(
            'assets/images/658.png',
            width: 50,
            height: 50,
          ),
          title: Text(
            'Ultra Lotto 6/58',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Page658()),
            );
          },
        ),
        Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.grey[700],
        ),
        ListTile(
          title: Text(
            'About App',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          leading: Icon(Icons.info_outline_rounded),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AboutAppPage()),
            );
          },
        ),
      ],
    );
  }
}
