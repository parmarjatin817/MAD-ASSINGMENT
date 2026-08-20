import 'my_details.dart';

void main() {
  try {
    int.parse(myName);
  } on FormatException {
    print("Name is not a number.");
  }

  try {
    print(myFavoriteFoods[10]);
  } on RangeError {
    print("Index out of bounds for foods.");
  }
}
