import 'dart:io';

void main() {
  int rows = 6; // Number of rows in the pattern

  // Loop through each row
  for (int a = 1; a <= rows; a++) {
    // Print spaces before the numbers
    for (int b = 1; b <= rows - a; b++) {
      stdout.write(' '); // Print a space without moving to the next line
    }

    // Print numbers for the current row
    for (int c = 1; c <= (2 * a - 1); c++) {
      stdout.write(
          a); // Print the current row number without moving to the next line
    }

    print(
        ''); // Move to the next line after printing all characters in the current row
  }
}
