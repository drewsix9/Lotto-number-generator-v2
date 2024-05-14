import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildNumberWidgets(List<String> numbers) {
  return Row(
    children: numbers.map((number) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
        height: 50.h,
        width: 50.w,

        // decoration for the container
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.w,
          ),
          borderRadius: BorderRadius.circular(10.r),
        ),

        // the number inside the container
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              fontSize: 30.sp,
              color: Colors.black,
            ),
          ),
        ),
      );
    }).toList(),
  );
}
