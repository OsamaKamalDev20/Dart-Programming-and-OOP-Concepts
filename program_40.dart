import 'dart:io';

void main() {
  int? largestNumber;
  int? smallestNumber;

  print(
      "Write a program to enter the numbers till the user wants and at the end the program should display the largest and smallest numbers entered");
  while (true) {
    stdout.write('Enter a number (or type "finish"): ');
    String? input = stdin.readLineSync(); // Read user input

    if (input!.toLowerCase() == "finish") {
      break; // Stop if the user types "finish"
    }

    int? number = int.tryParse(input); // Try to parse the input as an integer

    if (number == null) {
      print('Please enter a valid number.');
      continue; // Skip this iteration if the input is not a valid number
    }

    // Initialize largest and smallest on the first valid input
    if (largestNumber == null || smallestNumber == null) {
      largestNumber = smallestNumber = number;
    } else {
      // Update largest and smallest numbers
      if (number > largestNumber) largestNumber = number;
      if (number < smallestNumber) smallestNumber = number;
    }
  }

  if (largestNumber == null || smallestNumber == null) {
    print('Not a valid numbers entered by the user.');
  } else {
    print('The Largest Number entered by the user is = $largestNumber');
    print('The Smallest Number entered by the user is = $smallestNumber');
  }
}
