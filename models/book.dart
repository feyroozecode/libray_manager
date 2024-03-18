class Book {
  String title;
  String author;
  String ISBN_OR_ID;
  int quantity;

  Book({required this.title, required this.author, required this.ISBN_OR_ID, this.quantity = 0});

  @override
  @override
  String toString() => '($title by $author , ISBN $ISBN_OR_ID , Quantity $quantity)';
}
