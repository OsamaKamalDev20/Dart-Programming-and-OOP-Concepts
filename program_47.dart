import 'dart:io';

void main() {
  int rows = 6; // Number of rows in the pattern

  // Loop through each row
  for (int a = 1; a <= rows; a++) {
    // Print spaces before the numbers
    for (int b = 1; b <= rows - a; b++) {
      stdout.write(' '); // Print a space without moving to the next line
    }

    // Print decreasing numbers for the current row
    for (int b = a; b >= 1; b--) {
      stdout.write(b); // Print the decreasing numbers
    }

    // Print increasing numbers for the current row
    for (int b = 2; b <= a; b++) {
      stdout.write(b); // Print the increasing numbers
    }

    print(
        ''); // Move to the next line after printing all characters in the current row
  }
}
