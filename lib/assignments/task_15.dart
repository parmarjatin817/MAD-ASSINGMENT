import 'my_details.dart';

void main() {
  Map<String, String> colors = Map.from(friendsColors);
  colors.putIfAbsent(myName, () => "Blue");
  print(colors);
}
