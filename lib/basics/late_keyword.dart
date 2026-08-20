late String databaseurl;

void initialize() {
  databaseurl = 'https://mydb.example.com';
}

void main() {
  initialize();
  print(databaseurl);

  late String massage = computerMassage();
  print(massage);
}

String computerMassage() => 'hello from dart!';
