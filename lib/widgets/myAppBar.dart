import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(String title) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    foregroundColor: Colors.white,
    title: Text(title),
  );
}
