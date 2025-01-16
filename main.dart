import 'student_module.dart';
import 'inventory_module.dart';
import 'transaction_module.dart';

void main() {
  print("Welcome to Library Management System!");
  print("Choose an option:");
  print("1. Student Login/Register");
  print("2. Inventory Management");
  print("3. Book Transactions (Issue/Return)");

  // Example logic
  var studentModule = StudentModule();
  studentModule.registerStudent("Usman", "usman@example.com");

  var inventoryModule = InventoryModule();
  inventoryModule.addBook("The Dart Programming Language", "Concepts of dart", 5);

  var transactionModule = TransactionModule();
  transactionModule.issueBook("John", "The Dart Programming Language");
}

