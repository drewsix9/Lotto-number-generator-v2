import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

PreferredSizeWidget myAppBar(String title, {Widget? action}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    foregroundColor: Colors.white,
    title: Text(title, style: TextStyle(fontSize: 24.sp)),
    actions: [
      action ?? Container(),
    ],
  );
}
