import 'dart:math';

abstract class Shape {
  double area();
  double perimeter();
}

class Triangle extends Shape {
  double base, height, side1, side2, side3;
  Triangle(this.base, this.height, this.side1, this.side2, this.side3);
  @override
  double area() => 0.5 * base * height;
  @override
  double perimeter() => side1 + side2 + side3;
}

class Hexagon extends Shape {
  double side;
  Hexagon(this.side);
  @override
  double area() => (3 * sqrt(3) / 2) * pow(side, 2);
  @override
  double perimeter() => 6 * side;
}

void main() {
  var t = Triangle(10, 5, 10, 8, 8);
  var h = Hexagon(6);
  print("Triangle Area: ${t.area()}");
  print("Hexagon Area: ${h.area()}");
}
