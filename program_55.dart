void main() {
  Student student = Student();
  student.name = 'Osama Kamal';
  student.department = 'Software Engineering';
  student.display();
  student.regNumber = 'SE-286';
  student.semester = '8th';
  student.displayUniversityInfo();
}

// Parent Class
class Person {
  String? name;
  String? department;

  void display() {
    print("Name: $name");
    print("Department: $department");
  }
}

class Student extends Person {
  String? regNumber;
  String? semester;

  void displayUniversityInfo() {
    print("Registration Number = $regNumber");
    print("Current Semester = $semester");
  }
}
