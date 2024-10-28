void main() {
  print(
      "Write a program to calculate the sum of the first 10 natural numbers.");
  int sum = 0;
  for (int a = 1; a <= 10; a++) {
    print("$a Old Sum Value is = $a");
    sum = sum + a;
    print("New Sum Value is = $sum");
  }
}
