void main() {
  const numbers = [10, 12, 14, 16, 18, 22, 24, 26, 28];
  for (int i = 0; i < numbers.length; i++) {
    print("index $i : ${numbers[i]} ");
  }
  for (final num in numbers) {
    print(num);
  }

  numbers.forEach((n) => print('value: $n'));

  final doubleed = numbers.map((n) => n * 2).toList();
  print(doubleed);

  final evens = numbers.where((n) => n % 2 == 0).toList();
  print(evens);

  final total = numbers.reduce((sum, n) => sum + n);
  print(total);
}
