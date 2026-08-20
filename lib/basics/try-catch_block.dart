void main() {
  try {
    int result = 10 ~/ 0;
    print(result);
  } catch (e) {
    print('error caugth: $e');
  }
  print('program continues normally');
}
