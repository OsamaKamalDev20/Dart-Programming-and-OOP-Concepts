import 'dart:io';

void main() {
  print("Dart Reading input from the console");

  print('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Enter your father name: ');
  String? fatherName = stdin.readLineSync();
  print("Enter your age");
  int age = int.parse(stdin.readLineSync()!);

  print("My name is $name, my Father name is $fatherName and my age is $age");
}
