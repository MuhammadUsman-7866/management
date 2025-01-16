import 'dart:io';
import 'student_module.dart';
import 'inventory_module.dart';
import 'transaction_module.dart';

void main() {
  var studentModule = StudentModule();
  var inventoryModule = InventoryModule();
  var transactionModule = TransactionModule();

  while (true) {
    print("\n========== Library Management System ==========");
    print("1. Register Student");
    print("2. View Students");
    print("3. Add Book");
    print("4. View Books");
    print("5. Issue Book");
    print("6. Return Book");
    print("7. Exit");
    stdout.write("Enter your choice: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Enter Name: ");
        String name = stdin.readLineSync()!;
        stdout.write("Enter Email: ");
        String email = stdin.readLineSync()!;
        studentModule.registerStudent(name, email);
        break;

      case "2":
        studentModule.listStudents();
        break;

      case "3":
        stdout.write("Enter Book Title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Enter Author: ");
        String author = stdin.readLineSync()!;
        stdout.write("Enter Number of Copies: ");
        int copies = int.parse(stdin.readLineSync()!);
        inventoryModule.addBook(title, author, copies);
        break;

      case "4":
        inventoryModule.listBooks();
        break;

      case "5":
        stdout.write("Enter Student Name: ");
        String studentName = stdin.readLineSync()!;
        stdout.write("Enter Book Title: ");
        String bookTitle = stdin.readLineSync()!;
        transactionModule.issueBook(studentName, bookTitle);
        break;

      case "6":
        stdout.write("Enter Student Name: ");
        String studentName = stdin.readLineSync()!;
        stdout.write("Enter Book Title: ");
        String bookTitle = stdin.readLineSync()!;
        transactionModule.returnBook(studentName, bookTitle);
        break;

      case "7":
        print("Exiting the Library System...");
        return;

      default:
        print("Invalid choice! Please enter a valid option.");
    }
  }
}
