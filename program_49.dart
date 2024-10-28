void main() {
  Student student = Student();
  Student student2 = Student();

  print("Student One Info");
  student.name = "Osama";
  student.subject = "Mobile Application Development";
  student.rollNumber = 286;
  student.displayInfo();

  print("Student Two Info");

  student2.name = "Shaarif Asim";
  student2.subject = "Front-End UI Development";
  student2.rollNumber = 279;
  student2.displayInfo();
}

class Student {
  String? name;
  String? subject;
  int? rollNumber;

  void displayInfo() {
    print("My name is: ${name}");
    print("My favorite is: ${subject}");
    print("My roll is: ${rollNumber}");
  }
}
