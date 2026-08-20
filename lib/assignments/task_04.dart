import 'my_details.dart';

void main() {
  int lastDigit = myRollNumberInt % 10;
  for (int i = 1; i <= 10; i++) {
    print("$lastDigit * $i = ${lastDigit * i}");
  }
}
