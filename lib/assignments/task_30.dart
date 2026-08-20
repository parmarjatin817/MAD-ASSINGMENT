import 'my_details.dart';

Stream<int> rollStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield myRollNumberInt * i;
  }
}

void main() async {
  await for (int val in rollStream()) {
    print(val);
  }
}
