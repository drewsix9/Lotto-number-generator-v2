//create a model for 6 numbers two digit each the number will be a data type of string
import 'dart:math';

class RandomNumbers {
  List<String> generateNumbers(int choice) {
    Set<int> uniqueNumbers = {};
    while (uniqueNumbers.length < 6) {
      int randomNumber = Random().nextInt(choice + 1);
      if (!uniqueNumbers.contains(randomNumber) && randomNumber != 0) {
        uniqueNumbers.add(randomNumber);
      }
    }
    return uniqueNumbers.map((e) => e.toString().padLeft(2, '0')).toList();
  }
}
