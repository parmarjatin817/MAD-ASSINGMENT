void main() {
  List<int> marks = [45, 55, 30, 80, 48, 90];
  var graceMarks = marks.map((m) => m + 5).toList();
  print("Grace Marks: $graceMarks");
  var failed = graceMarks.where((m) => m < 50).toList();
  print("Failed (with grace): $failed");
}
