import 'dart:io';

void main() {
  print("**** Celsius to Fahrenheit ****");
  print("Enter temperature in Celsius");
  double celsiusTemp = double.parse(stdin.readLineSync()!);

  double fahrenheitTemp = (celsiusTemp * 9 / 5) + 32;

  print("$celsiusTemp °C is equal to $fahrenheitTemp °F");

  print("**** Fahrenheit to Celsius ****");
  print("Enter temperature in Fahrenheit");
  double fahrenheitTemp1 = double.parse(stdin.readLineSync()!);

  double celsiusTemp1 = (fahrenheitTemp - 32) * 5 / 9;

  print("$fahrenheitTemp1 °F is equal to $celsiusTemp1 °C");
}
