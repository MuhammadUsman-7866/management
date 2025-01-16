class Book {
  String title;
  String author;
  int copies;

  Book(this.title, this.author, this.copies);

  @override
  String toString() => "Title: $title, Author: $author, Copies: $copies";
}

class InventoryModule {
  List<Book> books = [];

  void addBook(String title, String author, int copies) {
    books.add(Book(title, author, copies));
    print("Book Added: $title");
  }

  void listBooks() {
    if (books.isEmpty) {
      print("No books in inventory.");
    } else {
      print("Books in Inventory:");
      books.forEach((book) => print(book));
    }
  }

  bool isBookAvailable(String title) {
    return books.any((book) => book.title == title && book.copies > 0);
  }

  void decreaseBookCount(String title) {
    books.where((book) => book.title == title).forEach((book) => book.copies--);
  }

  void increaseBookCount(String title) {
    books.where((book) => book.title == title).forEach((book) => book.copies++);
  }
}
