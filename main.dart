import 'models/book.dart';

void main() {
  int level = 0;

  Book book = new Book(
      title: "Arbauna Hadith",
      author: "Imam Annawawee",
      ISBN_OR_ID: "00123440",
      quantity: 12);

  print(level);

  print(book.toString());
}
