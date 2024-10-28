import 'dart:io';

bool isPrime(int number) {
  // Prime numbers are greater than 1
  if (number <= 1) {
    return false;
  }

  // Check for factors from 2 up to number ~/ 2
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false; // If divisible by any number, it's not prime
    }
  }

  return true; // No divisors found, number is prime
}

void main() {
  print(
      "Write a program that prompts the user to input a positive integer. It should then output a message indicating whether the number is a prime number.");
  // Prompt the user to input a positive integer
  stdout.write('Enter a positive integer: ');
  int? number = int.parse(stdin.readLineSync()!);

  if (number < 0) {
    print('Please enter a positive integer.');
  } else {
    // Check if the number is prime and output the result
    if (isPrime(number)) {
      print('$number is a Prime Number.');
    } else {
      print('$number is Composite Number.');
    }
  }
}
