void main() {
  MacBook macBook =
      MacBook('Apple', 'M1', 6300000, 'Apple Silicon Processors ');
  macBook.displayInfo();
}

// Parent Class
class Laptop {
  String? brand;
  String? generation;
  double? price;

// Constructor with parameters
  Laptop(this.brand, this.generation, this.price) {
    print("-------------------- BRANDED LAPTOPS --------------------");
  }

  void displayInfo() {
    print(
      "Brand: $brand, Price: $price PKR, Generation: $generation series\n",
    );
  }
}

class MacBook extends Laptop {
  String processor;
  MacBook(String brand, String generation, double price, this.processor)
      : super(brand, generation, price);

  void displayInfo() {
    super.displayInfo();
    print("Processor: $processor");
  }
}
