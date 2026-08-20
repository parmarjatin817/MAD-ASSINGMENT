import 'my_details.dart';

void main() {
  try {
    int result = myRollNumberInt ~/ 0;
    print(result);
  } catch (e) {
    print("Cannot divide roll number by zero.");
  }
}
