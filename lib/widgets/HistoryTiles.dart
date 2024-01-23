// ignore_for_file: prefer_const_constructors

import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/utils/models/Lotto_class.dart';
import 'package:provider/provider.dart';

Lotto lotto = Lotto(); // instance of Lotto class

class HistoryTiles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Access the LottoDataBase instance
    final lottoDataBase = Provider.of<LottoDataBase>(context);

    List<String> historyEntries = lottoDataBase.entries;

    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: ListView.separated(
        itemCount: historyEntries.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
                lotto.imagePath[int.parse(historyEntries[index][0])],
                height: 48),
            title: Center(
                // Wrap the Text widget with a Center widget
                child: Text(
              historyEntries[index].substring(1).replaceAll(' ', '-'),
              style: GoogleFonts.robotoMono(
                textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {},
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 24,
          ); // Add a Divider widget as a separator
        },
      ),
    );
  }
}
