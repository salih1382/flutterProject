import 'course.dart';

class Student {
  int? id;
  String name;
  String familyName;
  int termCounter = 0;
  Map<Course, double?> mapOfGrades = {};
  double totalGrades = 0;
  static List<Student> students = [];

  Student(this.id, this.name, this.familyName) {
    if (id != null && isIdAvailable(id!)) {
      students.add(this);
    }
  }

  int get numberOfCourses => mapOfGrades.length;

  int get numberOfUnits {
    int unitCounter = 0;
    mapOfGrades.forEach((course, grade) {
      unitCounter += course.units;
    });
    return unitCounter;
  }

  List<Course> get courses => mapOfGrades.keys.toList();

  double get currentGPA {
    int gradesCounter = 0;
    mapOfGrades.forEach((course, grade) {
      if (grade != null) {
        gradesCounter++;
      }
    });
    if (gradesCounter == 0) return 0.0;
    return totalGrades / gradesCounter;
  }

  bool isIdAvailable(int id) {
    for (var student in students) {
      if (student.id == id) {
        return false;
      }
    }
    return true;
  }

  void addCourse(Course course) {
    if (!mapOfGrades.containsKey(course)) {
      mapOfGrades[course] = null;
      course.updateStudentGrade(this, null);
    }
  }

  void updateCourseGrade(Course course, double? grade) {
    mapOfGrades[course] = grade;
    if (grade != null) {
      totalGrades += grade;
    }
  }

  void removeCourse(Course course) {
    if (mapOfGrades.containsKey(course)) {
      if (mapOfGrades[course] != null) {
        totalGrades -= mapOfGrades[course]!;
      }
      mapOfGrades.remove(course);
    }
  }

  void setCourseGrade(Course course, double grade) {
    if (mapOfGrades.containsKey(course)) {
      mapOfGrades[course] = grade;
      course.updateStudentGrade(this, grade);
      totalGrades += grade;
    }
  }

  @override
  String toString() {
    return '$name $familyName, ID: $id';
  }

  String printCourses() {
    String courseString = "Courses:\n";
    int cntr = 1;
    mapOfGrades.forEach((course, grade) {
      courseString += "$cntr.${course.courseTitle} ";
      if (grade != null) courseString += "Grade=$grade";
      courseString += "\n";
      cntr++;
    });
    return courseString.substring(0, courseString.lastIndexOf("\n"));
  }

  String printCurrentGPA() => "Average Grade: $currentGPA";
  String printUnits() => "Units: $numberOfUnits";

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Student && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
