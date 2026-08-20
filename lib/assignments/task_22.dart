class Book {
  String title;
  String author;

  Book({required this.title, required this.author});

  Book.defaultBook()
      : title = "Deep Work",
        author = "Cal Newport";

  void display() {
    print("Title: $title, Author: $author");
  }
}

void main() {
  var b1 = Book(title: "Dart Programming", author: "Google");
  var b2 = Book.defaultBook();
  b1.display();
  b2.display();
}
