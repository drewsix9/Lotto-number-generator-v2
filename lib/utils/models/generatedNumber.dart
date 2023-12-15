//create a model for 6 numbers two digit each the number will be a data type of string
import 'dart:math';

class RandomNumbers {
  //allocate 6 array of strings and initialize to '00'
  List<String> numbers = List.filled(6, '00');

  void generateNumbers(int choice) {
    Set<int> uniqueNumbers = {};
    while (uniqueNumbers.length < 6) {
      int randomNumber = Random().nextInt(choice + 1);
      if (!uniqueNumbers.contains(randomNumber)) {
        uniqueNumbers.add(randomNumber);
      }
    }
    int i = 0;
    uniqueNumbers.forEach((element) {
      numbers[i] = element.toString().padLeft(2, '0');
      i++;
    });
  }
}
