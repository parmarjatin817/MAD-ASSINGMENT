mixin Coding {
  void code() => print("I am coding.");
}

mixin Drawing {
  void draw() => print("I am drawing.");
}

mixin Cooking {
  void cook() => print("I am cooking.");
}

class MySkills with Coding, Drawing, Cooking {}

void main() {
  var skills = MySkills();
  skills.code();
  skills.draw();
  skills.cook();
}
