import 'dart:io';

void main() {
  stdout.write("Enter number one = ");
  int numberOne = int.parse(stdin.readLineSync()!);

  stdout.write("Enter number two = ");
  int numberTwo = int.parse(stdin.readLineSync()!);

  int add = numberOne + numberTwo;
  int sub = numberOne - numberTwo;
  int mul = numberOne * numberTwo;
  double div = numberOne / numberTwo;

  print("Addition = $add");
  print("Subtraction = $sub");
  print("Multiplication = $mul");
  print("Division = $div");
}
