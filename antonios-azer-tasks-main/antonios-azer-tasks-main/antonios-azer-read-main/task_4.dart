class Person {
  String name;
  int _age;

  Person(this.name, this._age);

  int get age => _age;

  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print("Age must be positive.");
    }
  }

  static String universityName = "sohag University";
}

class Employee extends Person {
  double salary;

  Employee(String name, int age, this.salary)
      : super(name, age);

  void showInfo() {
    print("University: ${Person.universityName}");
    print("Name: $name");
    print("Age: $age");
    print("Salary: $salary");
  }
}

abstract class Skills {
  void programming();

  void communication();
}

class Developer extends Employee implements Skills {
  Developer(String name, int age, double salary)
      : super(name, age, salary);

  @override
  void programming() {
    print("Programming skill: Dart developer");
  }

  @override
  void communication() {
    print("Communication skill: Good team communication");
  }
}

void main() {
  Developer dev = Developer(
    "Antonios Azer",
    25,
    8000,
  );

  dev.showInfo();
  dev.programming();
  dev.communication();
}
