void main() {
  Car car = Car("Honda Civic", "Honda", 56000000, 2020, 1000);
  print("");
  print("------------- Car Information -------------");
  car.displayInfo();
  print("Car Rental Price for 14 days: ${car.calculateRentalPrice(14)} PKR");
}

// Base class for all vehicles
class Vehicle {
  String name;
  String model;
  int price;
  int year;

  // Constructor for the Vehicle class
  Vehicle(this.name, this.model, this.price, this.year);

  void displayInfo() {
    print("");
    print("------------- Car Rental Calculator Project -------------");
    print("");
    print("Car's Name: $name ");
    print("Car's Model: $model");
    print("Registration Year: $year");
    print("Car's Price: ${price} PKR");
  }

  // Method to calculate rental price
  double calculateRentalPrice(int days) {
    return days * 6500;
  }
}

class Car extends Vehicle {
  int engineCapacity;
  Car(
    String name,
    String model,
    int price,
    int year,
    this.engineCapacity,
  ) : super(name, model, price, year);

  @override
  double calculateRentalPrice(int days) {
    return super.calculateRentalPrice(days);
  }
}
