import 'dart:io';

void main() {
  List<int> numbers = [];
  print('Enter the numbers separated by space:');
  String input = stdin.readLineSync()!;
  List<String> inputList = input.split(' ');
  for (String number in inputList) {
    numbers.add(int.parse(number));
  }
  List<int> evenNumbers = numbers.where((number) => number % 2 == 0).toList();
  print('Even numbers in the list: ${evenNumbers}');
}
