import 'my_details.dart';

class Person {
  String name;
  Person(this.name);
  void describe() {
    print("I am $name");
  }
}

class Teacher extends Person {
  Teacher(String name) : super(name);
  @override
  void describe() {
    print("I am Teacher $name");
  }
}

void main() {
  var t = Teacher(myName);
  t.describe();
}
