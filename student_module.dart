class Student {
  String name;
  String email;

  Student(this.name, this.email);

  @override
  String toString() => "Name: $name, Email: $email";
}

class StudentModule {
  List<Student> students = [];

  void registerStudent(String name, String email) {
    students.add(Student(name, email));
    print("Student Registered: $name");
  }

  void listStudents() {
    if (students.isEmpty) {
      print("No students registered yet.");
    } else {
      print("Registered Students:");
      students.forEach((student) => print(student));
    }
  }
}

