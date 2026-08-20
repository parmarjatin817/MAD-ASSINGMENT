void calculateSimpleInterest(double principal, double rate, double time) {
  double si = (principal * rate * time) / 100;
  print("Simple Interest: $si");
}

void main() {
  calculateSimpleInterest(1000, 5, 2);
  calculateSimpleInterest(2000, 6, 3);
  calculateSimpleInterest(3000, 7, 4);
}
