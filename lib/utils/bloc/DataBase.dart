import 'package:logger/logger.dart';
import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

class LottoDataBase extends ChangeNotifier implements ReassembleHandler {
  @override
  void reassemble() {
    print('Did hot-reload');
  }

  List<dynamic> entries = [];

  final _lottobox = Hive.box('lottobox');

// Methods for testing
  final logger = Logger();

  void printEntries() {
    int i = 1;
    logger.i('Entries:');
    for (var entry in entries) {
      logger.i('${i++}:) $entry');
    }
  }

  // Methods for the app
  void addEntry(String entry) {
    entries.add(entry);
    printEntries();
  }

  void removeEntry(int index) {
    entries.removeAt(index);
    notifyListeners();
  }

  void clearEntries() {
    entries.clear();
  }

  // Methods for Hive
  void createInitialData() {
    entries = [];
  }

  void updateData() {
    _lottobox.put('HISTORY', entries);
  }

  void loadData() {
    entries = _lottobox.get('HISTORY');
  }

  String joinIndex(int index, List<String> entry) {
    return index.toString() + entry.join(' ');
  }
}
