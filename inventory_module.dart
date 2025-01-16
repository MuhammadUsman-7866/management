class InventoryModule {
  List<Map<String, dynamic>> books = [];

  /// Adds a book using a Map
  void addBook(String title, String author, int copies) {
    books.add({"title": title, "author": author, "copies": copies});
    print("Book Added: $title");
  }

  /// Lists all books in the inventory
  void listBooks() {
    if (books.isEmpty) {
      print("No books in inventory.");
    } else {
      print("Books in Inventory:");
      books.forEach((book) {
        print("Title: ${book['title']}, Author: ${book['author']}, Copies: ${book['copies']}");
      });
    }
  }

  /// Checks if a book is available
  bool isBookAvailable(String title) {
    return books.any((book) => book["title"] == title && book["copies"] > 0);
  }

  /// Decreases book count when issued
  void decreaseBookCount(String title) {
    books.where((book) => book["title"] == title).forEach((book) => book["copies"]--);
  }

  /// Increases book count when returned
  void increaseBookCount(String title) {
    books.where((book) => book["title"] == title).forEach((book) => book["copies"]++);
  }
}

void main() {
  var inventory = InventoryModule();

  inventory.addBook("Dart for Beginners", "John Doe", 3);
  inventory.addBook("Flutter Essentials", "Jane Smith", 5);

  inventory.listBooks();

  print("\nChecking Availability: ${inventory.isBookAvailable("Dart for Beginners")}");

  inventory.decreaseBookCount("Dart for Beginners");
  inventory.listBooks();
}
