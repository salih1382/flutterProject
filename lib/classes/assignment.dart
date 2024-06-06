import 'course.dart';
import 'package:intl/intl.dart';

class Assignment {
  static List<Assignment> assignments = [];

  String assignmentTitle;
  String instructions;
  Course course;
  DateTime deadline;
  late bool isActive;

  Assignment({
    required this.assignmentTitle,
    required this.instructions,
    required this.course,
    required this.deadline,
  }) {
    assignments.add(this);
  }

  void setIsActive(bool active) {
    isActive = active;
  }

  bool getIsActive() {
    return DateTime.now().isBefore(deadline);
  }

  void setDeadline(DateTime deadline) {
    this.deadline = deadline;
  }

  String getDeadline() {
    return formatDate(deadline);
  }

  void setDeadlineWithDays(int day, int hour) {
    deadline = DateTime.now().add(Duration(days: day));
    deadline = DateTime(deadline.year, deadline.month, deadline.day, hour, 0);
  }

  void extendDeadline(int day, int hours) {
    deadline = deadline.add(Duration(days: day, hours: hours));
  }

  void shortenDeadline(int day, int hours) {
    deadline = deadline.subtract(Duration(days: day, hours: hours));
  }

  int getTimeLeft() {
    return deadline.difference(DateTime.now()).inDays;
  }

  String formatDate(DateTime deadline) {
    return DateFormat('yyyy-MM-dd HH:mm').format(deadline);
  }

  @override
  String toString() {
    return 'Assignment: $assignmentTitle with deadline: ${formatDate(deadline)}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Assignment &&
        other.assignmentTitle == assignmentTitle &&
        other.deadline == deadline;
  }

  @override
  int get hashCode {
    return assignmentTitle.hashCode ^ deadline.hashCode;
  }
}
