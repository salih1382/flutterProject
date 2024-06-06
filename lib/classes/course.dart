import 'teacher.dart';
import 'student.dart';
import 'assignment.dart';
import 'project.dart';
import 'dart:core';

class Course {
  int units;
  Teacher teacher;
  String courseTitle;
  Map<Student, double?> mapOfGrades = {};
  List<Assignment> assignments = [];
  List<Project> projects = [];
  int assignmentCounter = 0;
  int projectCounter = 0;
  bool isActive;
  DateTime? examDate;
  DateTime? examStart;
  DateTime? examStop;
  double? maxGrade;

  Course(this.courseTitle, this.teacher, this.units, this.isActive) {
    teacher.addCourse(this);
  }

  void setExamTime(DateTime date, DateTime startTime, DateTime stopTime) {
    this.examDate = date;
    this.examStart = startTime;
    this.examStop = stopTime;
  }

  String getExamTime() {
    return "Exam time: on ${examDate.toString()} ${examStart.toString()} - ${examStop.toString()}";
  }

  int get numberOfStudents => mapOfGrades.length;

  List<Student> get studentsList => mapOfGrades.keys.toList();

  List<double?> get gradesList => mapOfGrades.values.toList();

  void addStudent(Student student) {
    if (!mapOfGrades.containsKey(student) && student.id != null) {
      mapOfGrades[student] = null;
      student.updateCourseGrade(this, null);
    }
  }

  void updateStudentGrade(Student student, double? grade) {
    mapOfGrades[student] = grade;
  }

  void removeStudent(Student student) {
    if (mapOfGrades.containsKey(student)) {
      mapOfGrades.remove(student);
      student.removeCourse(this);
    }
  }

  void setStudentGrade(Student student, double grade) {
    if (mapOfGrades.containsKey(student)) {
      mapOfGrades[student] = grade;
      student.updateCourseGrade(this, grade);
    }
  }

  double getMaxGrade() {
    maxGrade = 0.0;
    mapOfGrades.forEach((student, grade) {
      if (grade != null && maxGrade! < grade) {
        maxGrade = grade;
      }
    });
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

  void addProject(Project project) {
    if (!projects.contains(project)) {
      projects.add(project);
      projectCounter++;
    }
  }

  void removeProject(Project project) {
    if (projects.contains(project)) {
      projects.remove(project);
      projectCounter--;
    }
  }

  int get numOfActiveProjects {
    int activeProjects = 0;
    projects.forEach((project) {
      if (project.isActive) {
        activeProjects++;
      }
    });
    return activeProjects;
  }

  int get numOfInActiveProjects {
    int inActiveProjects = 0;
    projects.forEach((project) {
      if (!project.isActive) {
        inActiveProjects++;
      }
    });
    return inActiveProjects;
  }

  @override
  String toString() {
    return "Course: $courseTitle";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Course && runtimeType == other.runtimeType && courseTitle == other.courseTitle;

  @override
  int get hashCode => courseTitle.hashCode;
}
