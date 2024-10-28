import 'dart:io';

void main() {
  print("****** How to convert feet into metre based on user input ******");
  stdout.write("Enter the value in feet = ");
  double? feet = double.parse(stdin.readLineSync()!);

  double meter = feet / 3.2;
  print("$feet is equal to $meter meter");
}
