void main() {
  Dog dog = Dog();
  dog.sound();
}

// Interface
abstract class Animal {
// abstract method
  void sound();

  void eat() {
    print("Animal is eating grass");
  }
}

class Dog extends Animal {
  @override
  void sound() {
    super.eat();
    print("Dogs barks");
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print("Cats Meooo");
  }
}
