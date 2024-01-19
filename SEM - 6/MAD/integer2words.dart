import 'dart:io';

void main() {
  print('Enter an integer:');
  int number = int.parse(stdin.readLineSync()!);
  print('The number you entered is: $number');
  print('In words, it is: ${numberToWords(number)}');
}

String numberToWords(int number) {
  if (number == 0) {
    return 'Zero';
  }
  List<String> units = [
    '',
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine'
  ];
  List<String> tens = [
    '',
    '',
    'Twenty',
    'Thirty',
    'Forty',
    'Fifty',
    'Sixty',
    'Seventy',
    'Eighty',
    'Ninety'
  ];
  List<String> specialNumbers = [
    'Ten',
    'Eleven',
    'Twelve',
    'Thirteen',
    'Fourteen',
    'Fifteen',
    'Sixteen',
    'Seventeen',
    'Eighteen',
    'Nineteen'
  ];
  String words = '';
  if ((number / 1000000000).floor() > 0) {
    words += numberToWords((number / 1000000000).floor()) + ' Billion ';
    number %= 1000000000;
  }
  if ((number / 1000000).floor() > 0) {
    words += numberToWords((number / 1000000).floor()) + ' Million ';
    number %= 1000000;
  }
  if ((number / 1000).floor() > 0) {
    words += numberToWords((number / 1000).floor()) + ' Thousand ';
    number %= 1000;
  }
  if ((number / 100).floor() > 0) {
    words += numberToWords((number / 100).floor()) + ' Hundred ';
    number %= 100;
  }
  if (number > 0) {
    if (words.isNotEmpty) {
      words += 'and ';
    }
    if (number < 10) {
      words += units[number];
    } else if (number < 20) {
      words += specialNumbers[number - 10];
    } else {
      words += tens[(number / 10).floor()] + ' ' + units[number % 10];
    }
  }
  return words;
}
