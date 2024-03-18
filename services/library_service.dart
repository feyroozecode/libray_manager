import '../models/book.dart';

class LibraryService {
  final Map<String, Book> _books = {};

  // get method of _books
  get books => _books;

  /**
   * Adding new Book with handling if is exist
   */
  void addBook(Book book) {
    if (_books.containsKey(book.ISBN_OR_ID)) {
      print("Duplicate book found: ${book.title}");
    } else {
      _books[book.ISBN_OR_ID] = book;
    }
  }

  /**
   *  remove book by ISBN 
   */
  void removeBook(String ISBN) {
    if (_books.containsKey(ISBN)) {
      _books.remove(ISBN);
    } else {
      print("Book not found : ISBN $ISBN");
    }
  }

  /**
   * Search in the books collections if book title or author match user query 
   * @param query => User query to search book by book title or author name 
   */
  List<Book> searchBook(String query) {
    final results = <Book>[];

    for (final book in _books.values) {
      if (book.title.toLowerCase().contains(query.toLowerCase()) ||
          book.author.toLowerCase().contains(query.toLowerCase())) {
        results.add(book);
      }
    }
    return results;
  }

  /// show all books
  void displayBooks() {
    if (_books.isEmpty) {
      print("Empty Libray");
    } else {
      for (final book in _books.values) {
        print(book);
      }
    }
  }
}
