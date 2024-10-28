void main() {
  Student student1 = Student();
  Student student2 = Student();
  Student student3 = Student();

  student1.name = "Osama Kamal";
  student1.grade = "A";
  student1.age = 25;
  student1.studentID = 286;
  student1.displayInfo();
  student1.updateGrade("A+");
// Student 2
  student2.name = "Shaarif Asim";
  student2.grade = "B+";
  student2.age = 24;
  student2.studentID = 279;
  student2.displayInfo();
  student2.updateStudentID(276);
// Student 3
  student3.name = "Salman";
  student3.grade = "B+";
  student3.age = 24;
  student3.studentID = 282;
  student3.displayInfo();
  student3.updateAge(27);
}

class Student {
  String? name;
  int? age;
  String? grade;
  int? studentID;

  void displayInfo() {
    print("Student name: $name");
    print("Age: $age");
    print("Grade: $grade");
    print("Student ID: $studentID");
  }

  void updateGrade(String newGrade) {
    grade = newGrade;
    print("Grade updated to $newGrade for $name");
    print("--------------------");
  }

  void updateStudentID(int newStudentID) {
    studentID = newStudentID;
    print("StudentID updated to $newStudentID for $name");
    print("--------------------");
  }

  void updateAge(int newAge) {
    age = newAge;
    print("StudentID updated to $newAge for $name");
    print("--------------------");
  }
}
