// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_number_generator/pages/history_page.dart';
import '../pages/642.dart';
import '../pages/645.dart';
import '../pages/649.dart';
import '../pages/655.dart';
import '../pages/658.dart';
import '../pages/about_app_page.dart';

class MyNavBar extends StatelessWidget {
  const MyNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        SizedBox(height: 20.h),

        // Lotto 6/42
        ListTile(
          leading: Image.asset(
            'assets/images/642.png',
            width: 50.w,
            height: 50.h,
          ),
          title: Text(
            'Lotto 6/42',
            style: TextStyle(
              fontSize: 15.sp,
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
        SizedBox(height: 20.h),

        // Lotto 6/45
        ListTile(
          leading: Image.asset(
            'assets/images/645.png',
            width: 50.w,
            height: 50.h,
          ),
          title: Text(
            'Mega Lotto 6/45',
            style: TextStyle(
              fontSize: 15.sp,
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
        SizedBox(height: 20.h),

        // Lotto 6/49
        ListTile(
          leading: Image.asset(
            'assets/images/649.png',
            width: 50.w,
            height: 50.h,
          ),
          title: Text(
            'Super Lotto 6/49',
            style: TextStyle(
              fontSize: 15.sp,
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
        SizedBox(height: 20.h),

        // Lotto 6/55
        ListTile(
          leading: Image.asset(
            'assets/images/655.png',
            width: 50.w,
            height: 50.h,
          ),
          title: Text(
            'Grand Lotto 6/55',
            style: TextStyle(
              fontSize: 15.sp,
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
        SizedBox(height: 20.h),

        // Lotto 6/58
        ListTile(
          leading: Image.asset(
            'assets/images/658.png',
            width: 50.w,
            height: 50.h,
          ),
          title: Text(
            'Ultra Lotto 6/58',
            style: TextStyle(
              fontSize: 15.sp,
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

        // Divider
        Divider(
          thickness: 1,
          indent: 10,
          endIndent: 10,
          color: Colors.grey[700],
        ),

        // History of Generated Numbers
        ListTile(
          title: Text(
            'History',
            style: TextStyle(
              fontSize: 15.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),
          ),
          leading: Icon(Icons.history),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HistoryPage()),
            );
          },
        ),

        // About App
        ListTile(
          title: Text(
            'About App',
            style: TextStyle(
              fontSize: 15.sp,
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
