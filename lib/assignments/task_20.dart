import 'my_details.dart';

class LowAttendanceException implements Exception {
  String name;
  double percentage;
  LowAttendanceException(this.name, this.percentage);
  @override
  String toString() => "Low Attendance: $name has $percentage%";
}

void checkAttendance(String name, double percentage) {
  if (percentage < 75) {
    throw LowAttendanceException(name, percentage);
  }
  print("Attendance OK for $name");
}

void main() {
  try {
    checkAttendance(myName, 65.0);
  } catch (e) {
    print(e);
  }
}
