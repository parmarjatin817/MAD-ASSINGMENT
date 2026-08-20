import 'dart:math';

double calculateArea(double radius) => pi * radius * radius;

void main() {
  print("Area 1: ${calculateArea(5)}");
  print("Area 2: ${calculateArea(10)}");
  print("Area 3: ${calculateArea(15)}");
}
