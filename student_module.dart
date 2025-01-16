class StudentModule {
  List<Map<String, String>> students = [];

  /// Registers a student using a Map
  void registerStudent(String name, String email) {
    students.add({"name": name, "email": email});
    print("Student Registered: $name");
  }

  /// Lists all registered students
  void listStudents() {
    if (students.isEmpty) {
      print("No students registered yet.");
    } else {
      print("Registered Students:");
      students.forEach((student) {
        print("Name: ${student['name']}, Email: ${student['email']}");
      });
    }
  }
}

void main() {
  var studentModule = StudentModule();

  studentModule.registerStudent("Ali", "ali@example.com");
  studentModule.registerStudent("Usman", "usman@example.com");

  studentModule.listStudents();
}
