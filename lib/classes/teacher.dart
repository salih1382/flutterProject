import 'course.dart';
import 'student.dart';
import 'assignment.dart';
import 'project.dart';
import 'dart:core';

class Teacher {
  int? id;
  String name;
  String familyName;
  List<Course> courses = [];
  int courseCounter = 0;
  static List<Teacher> teachers = [];

  Teacher(this.id, this.name, this.familyName) {
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

  void addProjectToCourse(Course course, Project project) {
    course.addProject(project);
  }

  void removeProjectFromCourse(Course course, Project project) {
    course.removeProject(project);
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
    return "Teacher: $name $familyName, ID: $id";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Teacher && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}
