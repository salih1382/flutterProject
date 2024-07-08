import 'assignment.dart';
import 'student.dart';
import 'teacher.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Course {
  static int _idCounter = 0;
  static List<Course> courses = [];

  int units;
  int id;
  Teacher teacher;
  String courseTitle;
  Map<Student, double?> mapOfGrades = {};
  List<Assignment> assignments = [];
  int assignmentCounter = 0;
  bool isActive;
  DateTime examDate;
  TimeOfDay examStart;
  TimeOfDay examStop;
  double? maxGrade;

  Course({
    required this.courseTitle,
    required this.teacher,
    required this.units,
    required this.isActive,
    required this.examDate,
    required this.examStart,
    required this.examStop,
  }) : id = _idCounter++ {
    teacher.addCourse(this);
    courses.add(this);
  }

  void setExamTime(DateTime date, TimeOfDay startTime, TimeOfDay stopTime) {
    examDate = date;
    examStart = startTime;
    examStop = stopTime;
  }

  String getExamTime() {
    DateFormat dateFormat = DateFormat('yyyy-MM-dd');
    DateFormat timeFormat = DateFormat('HH:mm');

    String formattedStartDate = dateFormat.format(examDate);
    String formattedStartTime = timeFormat.format(examStart as DateTime);
    String formattedStopTime = timeFormat.format(examStop as DateTime);

    return "Exam time: on $formattedStartDate $formattedStartTime - $formattedStopTime";
  }

  int getNumberOfStudents() {
    return mapOfGrades.length;
  }

  void setMaxGrade(double maxGrade) {
    this.maxGrade = maxGrade;
  }

  List<Student> getStudentsList() {
    return mapOfGrades.keys.toList();
  }

  List<double?> getGradesList() {
    return mapOfGrades.values.toList();
  }

  void addStudent(Student student) {
    if (!student.courses.contains(this)) {
      mapOfGrades[student] = null;
      student.updateCourseGrade(this, null);
    }
  }

  void updateStudentGrade(Student student, double grade) {
    mapOfGrades[student] = grade;
  }

  void removeStudent(Student student) {
    mapOfGrades.remove(student);
    student.removeCourse(this);
  }

  void setStudentGrade(Student student, double grade) {
    if (mapOfGrades.containsKey(student)) {
      mapOfGrades[student] = grade;
      student.updateCourseGrade(this, grade);
    }
  }

  double getMaxGrade() {
    maxGrade = 0.0;
    for (var grade in mapOfGrades.values) {
      if (grade != null && maxGrade! < grade) {
        maxGrade = grade;
      }
    }
    return maxGrade!;
  }

  void addAssignment(Assignment assignment) {
    if (!assignments.contains(assignment) && assignment.course == this) {
      assignments.add(assignment);
      assignmentCounter++;
    }
  }

  void removeAssignment(Assignment assignment) {
    if (assignments.contains(assignment)) {
      assignments.remove(assignment);
      assignmentCounter--;
    }
  }

  String printStudents() {
    var studentString = 'Students:\n';
    var cntr = 1;
    for (var student in mapOfGrades.keys) {
      studentString += '$cntr.$student\n';
      cntr++;
    }
    return studentString;
  }

  int getNumOfActiveAssignments() {
    return assignments.where((assignment) => assignment.isActive).length;
  }

  int getNumOfInActiveAssignments() {
    return assignments.where((assignment) => !assignment.isActive).length;
  }

  static Course? findCourseById(int id) {
    try {
      return courses.firstWhere((course) => course.id == id);
    } catch (e) {
      return null;
    }
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Course &&
        other.units == units &&
        other.isActive == isActive &&
        other.teacher == teacher &&
        other.courseTitle == courseTitle;
  }

  @override
  int get hashCode {
    return units.hashCode ^
        teacher.hashCode ^
        courseTitle.hashCode ^
        isActive.hashCode;
  }
}
