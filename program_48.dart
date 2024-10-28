void main() {
  List<int> rollNumbers = [279, 286, 972, 682, 729];
  List<String> studentsNames = [
    "Shaarif Asim",
    "Osama Kamal",
    "Mahad Faisal",
    "Raheel",
    "Salman",
    "Daniyal"
  ];

  // print(studentsNames.length);
  print(rollNumbers.reversed.toList());

  studentsNames.removeRange(0, 1);
  print(studentsNames);
  // rollNumbers.add(272);
  // studentsNames.add("Aman Mirza");
  // studentsNames.remove("Mahad Faisal");

  // print(studentsNames);

  // print(studentsNames.reversed.toList());

  // for (int a = 0; a < studentsNames.length; a++) {
  //   print("${studentsNames[a]} roll number is: ${rollNumbers[a]}");
  // }
}
