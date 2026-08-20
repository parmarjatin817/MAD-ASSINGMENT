void main() {
  try {
    int result = 100 ~/ 0;
    print('Result : $result');
  } catch (e) {
    print('exception caught : $e');
  } finally {
    print('cleanup: finally block executed');
  }
  print('program end');
}
