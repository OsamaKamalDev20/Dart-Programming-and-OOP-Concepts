import 'dart:io';

void main() {
  int rows = 10;
  int columns = 20;

  for (int a = 0; a < rows; a++) {
    for (int b = 0; b < columns; b++) {
      stdout.write("*");
    }
    print("");
  }
}
