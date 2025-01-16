import 'inventory_module.dart';

class TransactionModule {
  List<String> issuedBooks = [];

  void issueBook(String studentName, String bookTitle) {
    var inventory = InventoryModule();
    if (inventory.isBookAvailable(bookTitle)) {
      inventory.decreaseBookCount(bookTitle);
      issuedBooks.add("$studentName issued $bookTitle");
      print("Book issued successfully: $bookTitle to $studentName");
    } else {
      print("Book not available: $bookTitle");
    }
  }

  void returnBook(String studentName, String bookTitle) {
    var inventory = InventoryModule();
    inventory.increaseBookCount(bookTitle);
    issuedBooks.remove("$studentName issued $bookTitle");
    print("Book returned successfully: $bookTitle from $studentName");
  }

  void listTransactions() {
    if (issuedBooks.isEmpty) {
      print("No transactions recorded.");
    } else {
      print("Book Transactions:");
      issuedBooks.forEach((transaction) => print(transaction));
    }
  }
}
