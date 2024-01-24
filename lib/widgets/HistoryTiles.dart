import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:lotto_number_generator/utils/bloc/DataBase.dart';
import 'package:lotto_number_generator/utils/models/Lotto_class.dart';
import 'package:provider/provider.dart';

Lotto lotto = Lotto(); // instance of Lotto class

class HistoryTiles extends StatelessWidget {
  const HistoryTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: Provider.of<LottoDataBase>(context).entries.length,
      itemBuilder: (context, index) {
        return Consumer<LottoDataBase>(
          builder: (context, value, child) => Slidable(
            endActionPane: ActionPane(
              motion: const BehindMotion(),
              children: [
                // delete button
                SlidableAction(
                  onPressed: (context) {
                    showDeleteDialog(context, value, index);
                  },
                  backgroundColor: Colors.red,
                  icon: Icons.delete,
                  foregroundColor: Colors.white,
                  label: 'Delete',
                ),
              ],
            ),
            child: ListTile(
              leading: Image.asset(
                  lotto.imagePath[int.parse(value.entries[index][0])],
                  height: 48),
              title: Center(
                child: Text(
                  value.entries[index].substring(1).replaceAll(' ', '-'),
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
    );
  }

  void showDeleteDialog(BuildContext context, LottoDataBase value, int index) {
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
