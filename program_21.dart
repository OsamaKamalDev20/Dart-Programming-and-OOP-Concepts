void main() {
  String description =
      "A computer is an electronic device that processes data and perform a wide range of tasks. It consists of hardware components such as RAM, CPUs, and storage which work together with software systems, including operating systems and applications, to perform its functions";
  String text = "Flutter Developer";

  print("LENGTH");
  print(description.length);
  // print("LOWER CASE");
  // print(text.toLowerCase());
  // print("UPPER CASE");
  // print(text.toUpperCase());
  // print("Splitting String");
  // print(text.split(''));
  print("Replacing String");
  print("Before Replacing");
  print(text);
  print("After Replacing");
  print(text.replaceAll("Flutter", "Android"));
  print(text.contains("r"));
  print(text.contains("g"));
}
