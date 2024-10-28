import 'dart:io';

void main() {
  print("****** MARKS SHEET ******");
  stdout.write("Enter Marks 1 = ");
  int marks1 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks 2 = ");
  int marks2 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks 3 = ");
  int marks3 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks 4 = ");
  int marks4 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks 5 = ");
  int marks5 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks 6 = ");
  int marks6 = int.parse(stdin.readLineSync()!);
  stdout.write("Enter Marks 7 = ");
  int marks7 = int.parse(stdin.readLineSync()!);

  int total = marks1 + marks2 + marks3 + marks4 + marks5 + marks6 + marks7;
  double percentage = total / 1100 * 100;

  print("You scored $total out of 1100 marks");
  print("You Percentage is = $percentage");

  if (total > 880) {
    print("Your Grade is A+");
  } else if (total >= 770 && total < 879) {
    print("Your Grade is A");
  } else if (total >= 660 && total < 769) {
    print("Your Grade is B");
  } else if (total >= 550 && total < 659) {
    print("Your Grade is C");
  } else if (total >= 440 && total < 549) {
    print("Your Grade is D");
  } else if (total <= 439) {
    print("You failed in exams");
  }
}
