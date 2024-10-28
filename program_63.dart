// Base class: Employee

abstract class Employee {
  String name;
  String position;
  int baseSalary;
  int annualBonus;

  // Constructor for Employee class
  Employee(this.name, this.position, this.baseSalary, this.annualBonus);

  // Abstract method to calculate salary, to be implemented by derived classes
  double annualSalary();

  // Method to display employee details
  void displayInfo() {
    print("");
    print("-------------------- Employee Information --------------------");
    print("");
    print("Employees Name: $name");
    print("Employees Position: $position");
    print("Employees Base Salary: $baseSalary");
    print("Employees Annual Bonus: $annualBonus");
    print("Employee Annual Compensation : ${annualSalary()} PKR");
  }
}

// FullTimeEmployee class
class FullTimeEmployee extends Employee {
  double benefits;

  // Constructor for FullTimeEmployee class
  FullTimeEmployee(
    String name,
    String position,
    int baseSalary,
    int annualBonus,
    this.benefits,
  ) : super(
          name,
          position,
          baseSalary,
          annualBonus,
        );

  // Overriding the calculateSalary method for full-time employees
  @override
  double annualSalary() {
    return (baseSalary * 12) + (annualBonus * 45) + benefits;
  }
}

// PartTimeEmployee class
class PartTimeEmployees extends Employee {
  double hourlyRate;

  // Constructor for PartTimeEmployees class
  PartTimeEmployees(
    String name,
    String position,
    int baseSalary,
    int annualBonus,
    this.hourlyRate,
  ) : super(
          name,
          position,
          baseSalary,
          annualBonus,
        );
  // Overriding the calculateSalary method for full-time employees
  @override
  double annualSalary() {
    return (baseSalary * 12) + (annualBonus * hourlyRate);
  }
}

void main() {
  print("");
  print("-------------------- Polymorphism Project --------------------");
  print("");
  print("------------------- Employee Management System -------------------");
  print("");

  // Creating a list of employees using polymorphism
  List<Employee> employees = [
    FullTimeEmployee(
      "Osama Kamal",
      "Flutter Developer",
      44000,
      14000,
      6000,
    ),
    FullTimeEmployee(
      "Shaarif Asim",
      "Front-End UI Developer",
      40000,
      15000,
      5500,
    ),
    PartTimeEmployees(
      "Mubashir Babar",
      "Mern Stack Developer",
      40000,
      3500,
      500,
    ),
    PartTimeEmployees(
      "Abdul Rafay",
      "Back-End Developer",
      40000,
      2500,
      350,
    ),
  ];
  // Displaying information of each employee
  for (var employee in employees) {
    employee.displayInfo();
  }
}
