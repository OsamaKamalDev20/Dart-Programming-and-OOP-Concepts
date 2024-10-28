void main() {
  List<Student> name = [
    Student("Raheel", "Software Engineering"),
    Student("Osama", "Information Technology"),
    Student("Salman", "Banking"),
    Student("Asim", "Economics"),
    Student("Daniyal", "Mobile Apps"),
  ];
  name.forEach((element) {
    print('Name: ${element.name} is in ${element.department} department');
  });

  // Student student = Student("Raheel");
  // student.department = "Software Engineering";
  // student.displayInfo();
}

class Student {
  String? name;
  String? department;
  int? studentID;

  Student(String name, String department) {
    // print(name);
    this.name = name;
    this.department = department;
  }

  void displayInfo() {
    print("------------------------------------");
    print("Name: $name");
    print("Department Name: $department");
    print("Student Registration ID: $studentID");
    print("------------------------------------");
  }
}
