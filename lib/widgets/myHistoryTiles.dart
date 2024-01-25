import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:provider/provider.dart';

class MyHistoryTiles extends StatelessWidget {
  final String imagePath;
  final String data;
  final int index;
  const MyHistoryTiles(
      {super.key,
      required this.imagePath,
      required this.data,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.only(top: 24.h, left: 24.w, right: 24.w),
        child: Slidable(
          endActionPane: ActionPane(
            motion: const BehindMotion(),
            children: [
              // delete button
              SlidableAction(
                borderRadius: BorderRadius.circular(10.r),
                onPressed: (context) {
                  showDeleteDialog(context, value);
                },
                backgroundColor: Colors.red,
                icon: Icons.delete,
                foregroundColor: Colors.white,
                label: 'Delete',
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  imagePath,
                  height: 48.h,
                ),
                Text(
                  data.substring(0).replaceAll(' ', '-'),
                  style: GoogleFonts.robotoMono(
                    textStyle: TextStyle(
                      fontSize: 18.sp,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showDeleteDialog(BuildContext context, LottoDataBase value) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete this entry?'),
          actions: [
            // text button to cancel
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),

            // text button to delete the entry
            TextButton(
              onPressed: () {
                // delete the entry
                value.removeEntry(index);
                Navigator.pop(context);
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
