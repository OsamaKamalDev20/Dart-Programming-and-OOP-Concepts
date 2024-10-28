void main() {
  print("Write Program to Swap Values of Three variables like that.");
  int a;
  a = 28;
  int b;
  b = 56;
  int c;
  c = 84;
  print("Before Swapping");
  print("Value of a = $a");
  print("Value of b = $b");
  print("Value of c = $c");

  a = a - b + c; // 28-56+84 = 28+28 = 56
  b = c + b - a; // 84+56-56 = 84+0 = 84
  c = c + a - b; // 84+56-84 = 0+56 = 56
  c = a + c - b; // 56+56-84 112-84 = 28

  print("After Swapping");
  print("Value of a = $a");
  print("Value of b = $b");
  print("Value of c = $c");
}
