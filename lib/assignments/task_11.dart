import 'my_details.dart';

void main() {
  List<String> movies = List.from(myFavoriteMovies);
  movies.add("The Martian");
  print("After add: $movies");
  movies.remove("Inception");
  print("After remove: $movies");
  movies.sort();
  print("After sort: $movies");
}
