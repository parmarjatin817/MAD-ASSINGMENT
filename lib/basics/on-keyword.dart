void main() {
  try {
    const text = 'hello';
    int number = int.parse(text);
    print(number);
  } on FormatException {
    print('format Exception: cannot parsh text as number');
  } on RangeError {
    print('RangeError: Index out of bound');
  } catch (e) {
    print('Unknow error : $e');
  }
}
