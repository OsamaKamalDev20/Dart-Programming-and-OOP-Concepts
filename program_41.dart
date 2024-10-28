import 'dart:io';

void main() {
  print(
      "Write a  program to find the frequency of each digit in a given integer");

  stdout.write("Enter an Integer Value = ");
  String input = stdin.readLineSync()!;

  // Create a list to store the frequency of each digit (0-9)
  List<int> digitFrequency = List.filled(10, 0);

  // Loop through each character in the input
  for (int a = 0; a < input.length; a++) {
    // Check if the character is a digit
    if (RegExp(r'\d').hasMatch(input[a])) {
      int digit = int.parse(input[a]);
      digitFrequency[digit]++;
    }
  }
  // Display the frequency of each digit
  print("Frequency of each Digit");
  for (int a = 0; a < digitFrequency.length; a++) {
    if (digitFrequency[a] > 0) {
      print("Digit $a = ${digitFrequency[a]} times");
    }
  }
}
