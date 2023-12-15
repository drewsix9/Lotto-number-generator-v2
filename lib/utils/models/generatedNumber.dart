//create a model for 6 numbers two digit each the number will be a data type of string
import 'dart:math';

class RandomNumbers {
  late final String number1;
  late final String number2;
  late final String number3;
  late final String number4;
  late final String number5;
  late final String number6;

  RandomNumbers({
    this.number1 = '00',
    this.number2 = '00',
    this.number3 = '00',
    this.number4 = '00',
    this.number5 = '00',
    this.number6 = '00',
});

  void generateNumbers(int choice) {
    Random random = Random();
    number1 = random.nextInt(choice).toString().padLeft(2, '0');
    number2 = random.nextInt(choice).toString().padLeft(2, '0');
    number3 = random.nextInt(choice).toString().padLeft(2, '0');
    number4 = random.nextInt(choice).toString().padLeft(2, '0');
    number5 = random.nextInt(choice).toString().padLeft(2, '0');
    number6 = random.nextInt(choice).toString().padLeft(2, '0');
  }

  void printNumbers() {
    print('$number1 $number2 $number3 $number4 $number5 $number6');
  }
}
