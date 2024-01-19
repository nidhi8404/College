import 'dart:io';

void main() {
  print('Enter a string:');
  String input = stdin.readLineSync()!;
  int characterCount = input.length;
  int wordCount = input.split(' ').length;
  print('Character count: $characterCount');
  print('Word count: $wordCount');
}
