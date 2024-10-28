import 'dart:io';

void main() {
  int sumEven = 0;
  int sumOdd = 0;

  print(
      "Write a program that reads a set of integers, and then prints the sum of the even and odd integers.");
  stdout.write("Enter number of integers you want to enter: ");
  int numbers = int.parse(stdin.readLineSync()!);

  // Loop to get integers from the user
  for (int i = 0; i < numbers; i++) {
    stdout.write("Enter integers ${i + 1} = ");
    int number = int.parse(stdin.readLineSync()!);

    //Check if number is even or odd
    if (number % 2 == 0) {
      sumEven += number;
    } else {
      sumOdd += number;
    }
  }
  print("Sum of Even Numbers = $sumEven");
  print("Sum of Odd Numbers = $sumOdd");
}
