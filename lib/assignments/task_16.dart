import 'my_details.dart';

void main() {
  String? goal = myFutureCareerGoal;
  print("Goal: ${goal ?? "Not set"}");
  goal ??= myActualCareerGoal;
  print("Actual Goal: $goal");
}
