import 'package:flutter/material.dart';

PreferredSizeWidget myAppBar(String title, {Widget? action}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.redAccent,
    foregroundColor: Colors.white,
    title: Text(title),
    actions: [
      action ?? Container(),
    ],
  );
}
