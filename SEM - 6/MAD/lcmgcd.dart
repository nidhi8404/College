import 'dart:io';

void main() {
  print('Enter two numbers:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  print('LCM of $num1 and $num2 is ${calculateLCM(num1, num2)}');
  print('GCD of $num1 and $num2 is ${calculateGCD(num1, num2)}');
}

int calculateLCM(int num1, int num2) {
  return (num1 * num2) ~/ calculateGCD(num1, num2);
}

int calculateGCD(int num1, int num2) {
  if (num2 == 0) {
    return num1;
  }
  return calculateGCD(num2, num1 % num2);
}
