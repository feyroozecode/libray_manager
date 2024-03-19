import 'package:lib_manager/lib_manager.dart';
import 'package:test/test.dart';

import '../models/book.dart';
import '../services/library_service.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  group('Library', () {
    final library = LibraryService();

    test('addBook -> sucess', () {
      final book =
          Book(title: 'Book 1', author: 'Ahmad . I ', ISBN_OR_ID: "123456");
      library.addBook(book);
      expect(library.books.length, 1);
      expect(library.books['123456'], book);
    });

    test('AddBook -> duplicate', () {
      final book =
          Book(title: 'Livro1', author: 'Ecrivaingho', ISBN_OR_ID: '654321');
      library.addBook(book);

      //expect(() => library.addBook(book)).throwsAt(const isInstanceOf<Exception>());
    });
  });

  
}
