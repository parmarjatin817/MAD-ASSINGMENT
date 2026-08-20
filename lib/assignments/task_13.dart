import 'my_details.dart';

void main() {
  Set<String> myH = Set.from(myHobbies);
  Set<String> friendH = Set.from(friendHobbies);
  print("Union: ${myH.union(friendH)}");
  print("Intersection: ${myH.intersection(friendH)}");
  print("Difference: ${myH.difference(friendH)}");
}
