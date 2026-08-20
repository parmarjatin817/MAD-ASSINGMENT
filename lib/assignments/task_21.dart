import 'my_details.dart';

class Student {
  String name;
  String roll;
  List<int> marks;

  Student(this.name, this.roll, this.marks);

  double calculateAverage() {
    return marks.reduce((a, b) => a + b) / marks.length;
  }

  String getGrade() {
    double avg = calculateAverage();
    if (avg >= 80) return "A";
    if (avg >= 60) return "B";
    if (avg >= 40) return "C";
    return "F";
  }
}

void main() {
  var s = Student(myName, myRollNumber, [85, 90, 78]);
  print("Average: ${s.calculateAverage()}, Grade: ${s.getGrade()}");
}
