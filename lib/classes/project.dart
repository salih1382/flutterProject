import 'course.dart';

class Project {
  String title;
  String? description;
  double grade;
  bool isActive;
  DateTime? startDate;
  DateTime? stopDate;
  Course course;

  Project(
      this.title,
      this.grade,
      this.isActive,
      this.course, {
        this.description,
        this.startDate,
        this.stopDate,
      }) {
    course.addProject(this);
  }

  void activate() {
    isActive = true;
  }

  void deactivate() {
    isActive = false;
  }

  @override
  String toString() {
    return "Project: $title, Grade: $grade";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Project && runtimeType == other.runtimeType && title == other.title;

  @override
  int get hashCode => title.hashCode;
}
