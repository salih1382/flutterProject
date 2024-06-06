import 'course.dart';

class Student {
  static List<Student> students = [];

  int? id;
  String name;
  String familyName;
  int termCounter = 1;
  double currentGPA = 0.0;
  double totalGrade = 0.0;
  int totalUnits = 0;
  List<Course> courses = [];
  Map<Course, double?> mapOfGrades = {};

  Student({
    required this.id,
    required this.name,
    required this.familyName,
  }) {
    if (isIdAvailable(id!)) {
      students.add(this);
    }
  }

  void addCourse(Course course) {
    if (!courses.contains(course)) {
      courses.add(course);
      mapOfGrades[course] = null;
    }
  }

  void removeCourse(Course course) {
    courses.remove(course);
    mapOfGrades.remove(course);
  }

  void updateCourseGrade(Course course, double? grade) {
    if (courses.contains(course)) {
      mapOfGrades[course] = grade;
    }
  }

  static Student? findStudentById(int id) {
    try {
      return students.firstWhere((student) => student.id == id);
    } catch (e) {
      return null;
    }
  }

  bool isIdAvailable(int id) {
    for (var student in students) {
      if (student.id == id) {
        return false;
      }
    }
    return true;
  }

  @override
  String toString() {
    return 'Student: $name $familyName, ID: $id';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Student && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
