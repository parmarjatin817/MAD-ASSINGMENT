void main() {
  try {
    const number = [1, 2, 3];
    print(number[10]);
  } on RangeError catch (e, stackTrace) {
    print('error : $e');
    print('stack Trace : $stackTrace');
  }
}
