import 'my_details.dart';

Future<String> getName() async {
  await Future.delayed(Duration(seconds: 1));
  return myName;
}

Future<String> getRoll() async {
  await Future.delayed(Duration(seconds: 1));
  return myRollNumber;
}

Future<double> getResult() async {
  await Future.delayed(Duration(seconds: 1));
  return myLastExamPercentage;
}

void main() async {
  String name = await getName();
  String roll = await getRoll();
  double result = await getResult();
  print("Name: $name, Roll: $roll, Result: $result");
}
