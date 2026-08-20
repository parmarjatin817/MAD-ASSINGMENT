import 'dart:io';

class Swap {
  int a = 0;
  int b = 0;

  Swap() {
    stdout.write('enter first number: ');
    a = int.parse(stdin.readLineSync()!);
    stdout.write('enter second number: ');
    b = int.parse(stdin.readLineSync()!);
  }

  void org() {
    print("orignal number");
    print("A in : $a");
    print("B in : $b");
  }

  void proc() {
    a = a + b;
    b = a - b;
    a = a - b;
  }

  void dis() {
    print("swapping");
    print("A is: $a");
    print("B is: $b");
  }
}

void main() {
  final s = Swap();
  s.org();
  s.proc();
  s.dis();
}
