import 'course.dart';
import 'student.dart';
import 'assignment.dart';

class Teacher {
  static List<Teacher> teachers = [];

  int? id;
  String name;
  String familyName;
  String password;
  List<Course> courses = [];
  int courseCounter = 0;

  Teacher({
    required this.id,
    required this.name,
    required this.familyName,
    required this.password,
  }) {
    if (isIdAvailable(id!)) {
      teachers.add(this);
    }
  }

  void addStudentToCourse(Student student, Course course) {
    if (student.id != null) {
      course.addStudent(student);
      student.addCourse(course);
    }
  }

  void removeStudentFromCourse(Student student, Course course) {
    course.removeStudent(student);
    student.removeCourse(course);
  }

  void addCourse(Course course) {
    if (!courses.contains(course) && course.teacher == this) {
      courses.add(course);
      courseCounter++;
    }
  }

  void removeCourse(Course course) {
    if (courses.contains(course)) {
      courses.remove(course);
      courseCounter--;
    }
  }

  String printCourses() {
    var courseString = 'Courses:\n';
    var cntr = 1;
    for (var course in courses) {
      courseString += '$cntr.${course.courseTitle}\n';
      cntr++;
    }
    return courseString;
  }

  static Teacher? findTeacherById(int id) {
    try {
      return teachers.firstWhere((teacher) => teacher.id == id);
    } catch (e) {
      return null;
    }
  }

  void setStudentGrade(Course course, Student student, double grade) {
    if (course.teacher == this) {
      course.setStudentGrade(student, grade);
    }
  }

  void addAssignmentToCourse(Course course, Assignment assignment) {
    course.addAssignment(assignment);
  }

  void removeAssignmentFromCourse(Course course, Assignment assignment) {
    course.removeAssignment(assignment);
  }

  void setAssignmentDeadline(Assignment assignment, DateTime deadline) {
    assignment.setDeadline(deadline);
  }

  void setAssignmentDeadlineWithDays(Assignment assignment, int day, int hour) {
    assignment.setDeadlineWithDays(day, hour);
  }

  bool isIdAvailable(int id) {
    for (var teacher in teachers) {
      if (teacher.id == id) {
        return false;
      }
    }
    return true;
  }

  @override
  String toString() {
    return 'Teacher: $name $familyName, ID: $id';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Teacher && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}
