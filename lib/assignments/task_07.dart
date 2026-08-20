import 'my_details.dart';

void birthdayWish(String name, [int age = 18]) {
  print("Happy Birthday $name! You are $age years old.");
}

void main() {
  birthdayWish(myName);
  birthdayWish(myName, 21);
}
