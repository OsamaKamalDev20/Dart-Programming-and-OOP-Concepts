// Base class: Vehicle

class Vehicle {
  String? name;
  int? speed;

  // Constructor for Vehicle class
  Vehicle(this.name, this.speed);

  // Method to display information about the vehicle
  void displayInfo() {
    print("Vehicle Name: $name");
    print("Vehicle Speed: $speed km/h");
  }
}

// Mixin: Electric
mixin Electric {
  int? batteryCapacity;

  void chargeBattery() {
    print(
        "Charging the battery ------------------- Battery capacity is $batteryCapacity kWh");
  }

  void displayElectricInfo() {
    print("Battery Capacity: $batteryCapacity kWh");
  }
}

// Derived class: Car (normal vehicle)
class Car extends Vehicle {
  // Constructor for Car class
  Car(String name, int speed) : super(name, speed);

  // Method to display car-specific information
  @override
  void displayInfo() {
    print("");
    print("-------------------- Car Information --------------------");
    print("");
    super.displayInfo();
  }
}

// Derived class: ElectricCar (inherits from Vehicle and uses Electric mixin)

class ElectricCar extends Vehicle with Electric {
  // Constructor for ElectricCar class
  ElectricCar(String name, int speed, int batteryCapacity)
      : super(name, speed) {
    this.batteryCapacity = batteryCapacity;
  }
  // Method to display electric car-specific information
  @override
  void displayInfo() {
    print("-------------------- Electric Car Information --------------------");
    print("");
    super.displayInfo();
    displayElectricInfo();
  }
}

void main() {
  print("");
  print("-------------------- Mixin Project --------------------");
  print("");
  print("------------------- Vehicle Management System -------------------");

  // Creating a Car object
  Car myCar = Car("Honda Civic", 160);
  myCar.displayInfo();
  print("");

  // Creating an ElectricCar object
  ElectricCar myElectricCar = ElectricCar("Xiaomi SU7 Max", 265, 101);
  myElectricCar.displayInfo();
  myElectricCar.chargeBattery();
}
