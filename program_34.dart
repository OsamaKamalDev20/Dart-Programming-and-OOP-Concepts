import 'dart:io';

void main() {
  print(
      "Write a program that prompts the user to input a positive integer. It should then print the multiplication table of that number. ");
  stdout.write("Enter a number = ");
  int a = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 20; i++) {
    print("$a x $i = ${i * a}");
  }
}
