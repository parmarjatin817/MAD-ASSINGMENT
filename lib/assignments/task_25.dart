abstract class Drawable {
  void draw();
}

abstract class Resizable {
  void resize(int percent);
}

class Photo implements Drawable, Resizable {
  String filename;
  Photo(this.filename);
  @override
  void draw() {
    print("Drawing photo: $filename");
  }
  @override
  void resize(int percent) {
    print("Resizing photo to $percent%");
  }
}

void main() {
  var p = Photo("vacation.jpg");
  p.draw();
  p.resize(50);
}
