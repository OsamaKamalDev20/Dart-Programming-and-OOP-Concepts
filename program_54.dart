void main() {
  Person person = Person("Osama Kamal", 34);

  person.displayInfo();
  person.setAge = 21;
  person.setName = "Raheel Khan";
  print(person.firstName);
  print(person.age);
}

class Person {
  String _name;
  int _age;

  Person(this._name, this._age);

  String get firstName => _name;
  int get age => _age;

  set setAge(int age) {
    if (age > 0) {
      _age = age;
    }
  }

  set setName(String name) {
    _name = name;
  }

  void displayInfo() {
    print('Name: $_name, Age: $_age');
  }
}
