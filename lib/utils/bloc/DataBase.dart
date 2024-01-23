class DataBase {
  List<List<String>> entries = [];

  void addEntry(List<String> entry) {
    entries.add(entry);
  }

  void removeEntry(int index) {
    entries.removeAt(index);
  }

  void clearEntries() {
    entries.clear();
  }
}
