import 'dart:io';

class App {
  App() {
    start();
  }

  void start() {
    for (int i = 0; i < 80; i++) {
      if (i == 40) {
        stdout.write(" Salam Aleykoum - Book List");
      } else {
        stdout.write("*");
      }
    }
  }
}
