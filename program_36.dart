import 'dart:io';

int power(int base, int exponent) {
  int result = 1;

  //Loop to multiply the base by itself exponent times
  for (int i = 1; i <= exponent; i++) {
    result *= base;
  }
  return result;
}

void main() {
  print(
      "Two numbers are entered through the keyboard. Write a program to find the value of one number raised to the power of another.");
  // Taking base and exponent input from the user
  stdout.write('Enter the base number: ');
  int base = int.parse(stdin.readLineSync()!);
  stdout.write('Enter the exponent number: ');
  int exponent = int.parse(stdin.readLineSync()!); // Read exponent input

  if (exponent < 0) {
    print('This program does not handle negative exponents.');
  } else {
    // Calculate base raised to the power of exponent using loops
    int result = power(base, exponent);
    print('$base raised to the power of $exponent is $result.');
  }
}
