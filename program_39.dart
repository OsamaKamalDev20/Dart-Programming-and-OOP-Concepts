import 'dart:io';

// Function to calculate the HCF using Euclidean algorithm
int calculateHCF(int a, int b) {
  while (b != 0) {
    int temp = b;
    b = a % b;
    a = temp;
  }
  return a;
}

// Function to calculate the LCM using Euclidean algorithm
int calculateLCM(int a, int b) {
  int HCF = calculateHCF(a, b);

  return (a * b) ~/ HCF; //LCM = (a*b)/HCF
}

void main() {
  print("Write a program to calculate HCF and LCM of Two given numbers.");
  print("Enter 1st Number: ");
  int number1 = int.parse(stdin.readLineSync()!);
  print("Enter 2nd Number: ");
  int number2 = int.parse(stdin.readLineSync()!);

// Calculate HCF & LCM
  int HCF = calculateHCF(number1, number2);
  int LCM = calculateLCM(number1, number2);

  print("The Highest Common Factor of $number1 and $number2 is = $HCF");
  print("The Least Common Factor of $number1 and $number2 is = $LCM");
}
