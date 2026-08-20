class Animal {
  void speak() {
    print("Animal makes a sound");
  }
}

class Dog implements Animal {
  @override
  void speak() {
    print("Woof!");
  }
}

void main() {
  Animal myDog = Dog();
  myDog.speak();
}
