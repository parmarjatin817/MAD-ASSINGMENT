import 'my_details.dart';

void printMarks({required int sub1, required int sub2, required int sub3, required int sub4}) {
  print("Sub1: $sub1, Sub2: $sub2, Sub3: $sub3, Sub4: $sub4");
}

void main() {
  var marks = mySubjectMarks.values.toList();
  printMarks(sub1: marks[0], sub2: marks[1], sub3: marks[2], sub4: marks[3]);
}
