import 'my_details.dart';

void main() {
  double percentage = myLastExamPercentage;
  if (percentage >= 80) {
    print("Grade: A");
  } else if (percentage >= 60) {
    print("Grade: B");
  } else if (percentage >= 40) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }
}
