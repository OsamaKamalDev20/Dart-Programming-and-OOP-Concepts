// Interface for payment calculations
abstract class Payable {
  double calculateMonthlySalary(); // Abstract method for calculating salary
}

// Abstract class: Employee
abstract class Employee {
  String empName;
  String department;
  String position;
  int id;

  // Constructor for Employee class
  Employee(this.empName, this.department, this.position, this.id);

  // Abstract method to display employee details (must be implemented by subclasses)
  void displayInfo();
}

// Derived class: FullTimeEmployee
class FullTimeEmployee extends Employee implements Payable {
  double monthlySalary;

  // Constructor for FullTimeEmployee class
  FullTimeEmployee(String name, String department, String position, int id,
      this.monthlySalary)
      : super(name, department, position, id);

  // Implementation of the displayInfo method from the Employee abstract class
  @override
  void displayInfo() {
    print('-------------- Full-Time Employee --------------');
    print("");
    print('Employee Name: $empName');
    print('Employee Department: $department');
    print('Employee Position: $position');
    print("Employee ID: $id");
  }

  // Implementation of the calculateSalary method from the Payable interface
  @override
  double calculateMonthlySalary() {
    return monthlySalary; // Full-time employee's salary is their monthly salary
  }
}

// Derived class: PartTimeEmployee
class PartTimeEmployee extends Employee implements Payable {
  double hourlyRate;
  int hoursWorked;

  // Constructor for PartTimeEmployee class
  PartTimeEmployee(String name, String department, String position, int id,
      this.hourlyRate, this.hoursWorked)
      : super(name, department, position, id);

  // Implementation of the displayInfo method from the Employee abstract class
  @override
  void displayInfo() {
    print('-------------- Part-Time Employee --------------');
    print("");
    print('Employees Name: $empName');
    print('Employees Department: $department');
    print('Employees Position: $position');
    print('Employee ID: $id');
  }

  // Implementation of the calculateSalary method from the Payable interface
  @override
  double calculateMonthlySalary() {
    return hourlyRate *
        hoursWorked *
        40; // Part-time employee's salary is based on hourly rate
  }
}

void main() {
  print("");
  print(
      "-------------------- Interface and Abstraction Project --------------------");
  print("------------------- Employee Payment System -------------------");
  print("");

  // Creating a Full-Time Employee object
  FullTimeEmployee fullTimeEmployee = FullTimeEmployee(
      "Osama Kamal", "Mobile App", "Junior Flutter Developer", 3048, 45000);
  fullTimeEmployee.displayInfo();
  print("Monthly Salary: ${fullTimeEmployee.calculateMonthlySalary()} PKR");
  print("");

  // Creating a Part-Time Employee object
  PartTimeEmployee partTimeEmployee = PartTimeEmployee("Shaarif Asim",
      "Web Development ", "Front-End UI Development  ", 279, 120, 9);
  partTimeEmployee.displayInfo();
  print("Monthly Salary: ${partTimeEmployee.calculateMonthlySalary()} PKR");
}
