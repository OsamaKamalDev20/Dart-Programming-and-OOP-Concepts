import 'dart:io';

void main() {
  stdout.write("Enter 1st Number = ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter 2nd Number = ");
  int num2 = int.parse(stdin.readLineSync()!);

  if (num1 % 2 == 0) {
    print("$num1 is an even number");
  } else {
    print("$num1 is an odd number");
  }
  if (num2 % 2 == 0) {
    print("$num2 is an even number");
  } else {
    print("$num2 is an odd number");
  }
  if (num1 == num2) {
    print("$num1 is equal to $num2");
  } else {
    print("$num1 is not equal to $num2");
  }
}
