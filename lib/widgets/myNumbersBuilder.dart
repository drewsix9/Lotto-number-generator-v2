import 'package:flutter/material.dart';

Widget buildNumberWidgets(List<String> numbers) {
  return Row(
    children: numbers.map((number) {
      return Container(
        margin: EdgeInsets.all(5),
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            number,
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      );
    }).toList(),
  );
}
