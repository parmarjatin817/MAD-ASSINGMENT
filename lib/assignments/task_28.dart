import 'my_details.dart';

Future<String> fetchCollegeName() async {
  return Future.delayed(Duration(seconds: 2), () => myCollegeName);
}

void main() {
  fetchCollegeName().then((value) {
    print("College: $value");
  });
}
