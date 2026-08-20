import 'my_details.dart';

late String college;

void assignCollege() {
  college = myCollegeName;
}

void main() {
  assignCollege();
  print(college);
}
