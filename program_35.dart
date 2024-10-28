import 'dart:io';

int factorial(int number) {
  int result = 1; // Initialize result as 1

  // Use a for loop to calculate factorial
  for (int i = 1; i <= number; i++) {
    result *= i;
  }

  return result;
}

void main() {
  print(
      "Write a program to find the factorial value of any number entered through the keyboard");
  stdout.write("Enter a number = ");
  int number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print("Factorial of negative not possible");
  } else {
    int result = factorial(number);
    print("Factorial of $number is equal to: $result");
  }
}
