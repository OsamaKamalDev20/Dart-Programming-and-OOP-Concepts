import 'dart:io';

void main() {
  print("****** Electricity Bill Calculator  ******");
  stdout.write("Enter consumed unit = ");
  int consumedUnit = int.parse(stdin.readLineSync()!);
  int finalPrice = 0;

  if (consumedUnit < 100) {
    finalPrice = consumedUnit * 20;
    print("Your Electricity Bill of $consumedUnit is $finalPrice PKR");
    print("Per Unit cost is $consumedUnit");
  } else if (consumedUnit > 100 && consumedUnit < 200) {
    finalPrice = consumedUnit * 30;
    print("Your Electricity Bill of $consumedUnit is $finalPrice PKR");
    print("Per Unit cost is $consumedUnit");
  } else if (consumedUnit > 200 && consumedUnit < 300) {
    finalPrice = consumedUnit * 40;
    print("Your Electricity Bill of $consumedUnit is $finalPrice PKR");
    print("Per Unit cost is $consumedUnit");
  } else {
    finalPrice = consumedUnit * 50;
    print("Your Electricity Bill of $consumedUnit is $finalPrice PKR");
    print("Per Unit cost is $consumedUnit");
  }
}
