// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lotto_number_generator/pages/history_page.dart';
import 'package:lotto_number_generator/pages/lotto_page_builder.dart';
import 'package:lotto_number_generator/utils/models/lotto_assets.dart';

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
              MaterialPageRoute(
                  builder: (context) => LottoPageBuilder(
                        gameImagePath: gameImagePath[0],
                        gameName: gameName[0],
                        gameDescription: gameDescription[0],
                        gameMaxNumber: gameMaxNumber[0],
                      )),
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
              MaterialPageRoute(
                  builder: (context) => LottoPageBuilder(
                        gameImagePath: gameImagePath[1],
                        gameName: gameName[1],
                        gameDescription: gameDescription[1],
                        gameMaxNumber: gameMaxNumber[1],
                      )),
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
              MaterialPageRoute(
                  builder: (context) => LottoPageBuilder(
                        gameImagePath: gameImagePath[2],
                        gameName: gameName[2],
                        gameDescription: gameDescription[2],
                        gameMaxNumber: gameMaxNumber[2],
                      )),
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
              MaterialPageRoute(
                  builder: (context) => LottoPageBuilder(
                        gameImagePath: gameImagePath[3],
                        gameName: gameName[3],
                        gameDescription: gameDescription[3],
                        gameMaxNumber: gameMaxNumber[3],
                      )),
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
              MaterialPageRoute(
                  builder: (context) => LottoPageBuilder(
                        gameImagePath: gameImagePath[4],
                        gameName: gameName[4],
                        gameDescription: gameDescription[4],
                        gameMaxNumber: gameMaxNumber[4],
                      )),
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
