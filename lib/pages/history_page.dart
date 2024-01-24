import 'package:flutter/material.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/widgets/myAppBar.dart';
import 'package:lotto_number_generator/widgets/myHistoryTiles.dart';
import 'package:lotto_number_generator/widgets/myNavDrawer.dart';
import 'package:provider/provider.dart';

import '../utils/models/Lotto_class.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

Lotto lotto = Lotto(); // instance of Lotto class

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LottoDataBase>(
      builder: (context, value, child) => Scaffold(
        appBar: myAppBar(
          'History',
          action: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              if (value.entries.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  // show snackbar
                  const SnackBar(
                    content: Text('History is empty'),
                  ),
                );
              } else {
                // show delete dialog
                showDeleteDialog(context);
              }
            },
          ),
        ),
        drawer: const MyNavBar(),
        body: Consumer<LottoDataBase>(
          builder: (context, value, child) => ListView.builder(
            itemCount: value.entries.length,
            itemBuilder: (context, index) {
              return MyHistoryTiles(
                imagePath: lotto.imagePath[int.parse(value.entries[index][0])],
                data: value.entries[index].substring(1).replaceAll(' ', '-'),
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }

  Future<dynamic> showDeleteDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Delete all entries?'),
          actions: [
            // text button to cancel
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancel'),
            ),

            // text button to delete all entries
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<LottoDataBase>().clearEntries();

                // rebuild HistoryTiles widget using the provider
                setState(() {
                  context.read<LottoDataBase>().loadData();
                });

                // show snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('History cleared'),
                  ),
                );
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
