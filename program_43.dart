import 'dart:io';

void main() {
  int rows = 10;

  for (int a = 1; a <= rows; a++) {
    for (int b = 1; b <= a; b++) {
      stdout.write("*");
    }
    print("");
  }
}
