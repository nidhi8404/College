import 'dart:io';

void main() {
  print('Enter a number:');
  int number = int.parse(stdin.readLineSync()!);
  List<int> fibonacciSeries = calculateFibonacciSeries(number);
  print('Fibonacci series from 1 to $number: $fibonacciSeries');
}

List<int> calculateFibonacciSeries(int number) {
  List<int> fibonacciSeries = [0, 1];
  for (int i = 2; i <= number; i++) {
    fibonacciSeries.add(fibonacciSeries[i - 1] + fibonacciSeries[i - 2]);
  }
  return fibonacciSeries;
}
