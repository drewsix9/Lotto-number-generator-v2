//create a model for 6 numbers two digit each the number will be a data type of string
import 'dart:math';

class RandomNumbers {
  // void generateNumbers(int choice) {
  //   Set<int> uniqueNumbers = {};
  //   while (uniqueNumbers.length < 6) {
  //     int randomNumber = Random().nextInt(choice + 1);
  //     if (!uniqueNumbers.contains(randomNumber)) {
  //       uniqueNumbers.add(randomNumber);
  //     }
  //   }
  //   int i = 0;
  //   for (var element in uniqueNumbers) {
  //     numbers[i] = element.toString().padLeft(2, '0');
  //     i++;
  //   }
  // }

  List<String> generateNumbers(int choice) {
    Set<int> uniqueNumbers = {};
    while (uniqueNumbers.length < 6) {
      int randomNumber = Random().nextInt(choice + 1);
      if (!uniqueNumbers.contains(randomNumber)) {
        uniqueNumbers.add(randomNumber);
      }
    }
    return uniqueNumbers.map((e) => e.toString().padLeft(2, '0')).toList();
  }
}
