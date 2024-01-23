import 'package:hive_flutter/hive_flutter.dart';

class LottoDataBase {
  List<List<String>> entries = [];

  final _lottobox = Hive.box('lottobox');

  // Methods for testing
  void printEntries() {
    for (var entry in entries) {
      print(entry);
    }
  }

  // Methods for the app
  void addEntry(List<String> entry) {
    entries.add(entry);
    printEntries();
  }

  void removeEntry(int index) {
    entries.removeAt(index);
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
}
