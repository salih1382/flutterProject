import 'course.dart';

class Assignment {
  String title;
  String? description;
  double grade;
  bool isActive;
  DateTime? startDate;
  DateTime? stopDate;
  Course course;

  Assignment(
      this.title,
      this.grade,
      this.isActive,
      this.course, {
        this.description,
        this.startDate,
        this.stopDate,
      }) {
    course.addAssignment(this);
  }

  void activate() {
    isActive = true;
  }

  void deactivate() {
    isActive = false;
  }

  @override
  String toString() {
    return "Assignment: $title, Grade: $grade";
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is Assignment && runtimeType == other.runtimeType && title == other.title;

  @override
  int get hashCode => title.hashCode;
}
