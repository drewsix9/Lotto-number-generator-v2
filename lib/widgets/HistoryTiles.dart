import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lotto_number_generator/pages/642.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/utils/models/Lotto_class.dart';
import 'package:provider/provider.dart';

Lotto lotto = Lotto(); // instance of Lotto class

Widget HistoryTilesBuilder(BuildContext context, int index) {
  return Consumer<LottoDataBase>(
    builder: (context, value, child) => ListTile(
      // int i = v
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
      subtitle: Text(
        '${value.lotto642[index].date}',
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.grey[700],
        ),
      ),
      trailing: Text(
        '${value.lotto642[index].numbers}',
        style: TextStyle(
          fontSize: 12,
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
  );
}
