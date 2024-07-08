import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'widgets/assignments_widget.dart';
import 'widgets/courses_widget.dart';
import 'widgets/done_assignments_card_widget.dart';
import 'widgets/news_widget.dart';
import 'widgets/tasks_widget.dart';

Map<String, dynamic> studentDetails = {};
var doneAssignmentCardWidgets = <DoneAssignmentsCardWidget>[];
var courseWidgets = <CoursesWidget>[];
var taskWidgets = <TasksWidget>[];
var assignmentWidgets = <AssignmentsWidget>[];
var newsWidgets = <NewsWidget>[];

Map<String, int> _studentDetails = {};
List<dynamic> _doneAssignmentCardItems = [];
List<dynamic> _courseItems = [];
List<dynamic> _taskItems = [];
List<dynamic> _assignmentItems = [];
List<dynamic> _newsItems = [];

Future<void> update() async {
  await _fetchDoneAssignmentCards();
  await _fetchCourses();
  await _fetchTasks();
  await _fetchAssignments();
  await _fetchNews();
}

Future<void> _fetchStudentDetails() async {
  final url = Uri.parse('http://10.0.2.2:8080/StudentDetails');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _studentDetails = jsonResponse['studentDetails'];

    studentDetails = {
      'RemainingAssignments': _studentDetails['RemainingAssignments'],
      'RemainingExams': _studentDetails['RemainingExams'],
      'TopGrade': _studentDetails['TopGrade'],
      'LowestGrade': _studentDetails['LowestGrade'],
      'MissedAssignments': _studentDetails['MissedAssignments'],
    };
  } else {
    print('Failed to load studentDetails');
  }
}

Future<void> _fetchDoneAssignmentCards() async {
  final url = Uri.parse('http://10.0.2.2:8080/DoneAssignmentCards');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _doneAssignmentCardItems = jsonResponse['doneAssignmentCard'];
    doneAssignmentCardWidgets =
        _doneAssignmentCardItems.map<DoneAssignmentsCardWidget>((item) {
      return DoneAssignmentsCardWidget(
        assignmentTitle: item['Title'],
      );
    }).toList();
  } else {
    print('Failed to load doneAssignmentCards');
  }
}

Future<void> _fetchCourses() async {
  final url = Uri.parse('http://10.0.2.2:8080/Courses');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _courseItems = jsonResponse['course'];
    courseWidgets = _courseItems.map<CoursesWidget>((item) {
      return CoursesWidget(
        courseTitle: item['Title'],
        teacher: item['Teacher'],
        units: item['Units'],
        remainingAssignments: item['RemainingAssignments'],
        topStudent: item['TopStudent'],
      );
    }).toList();
  } else {
    print('Failed to load courses');
  }
}

Future<void> _fetchTasks() async {
  final url = Uri.parse('http://10.0.2.2:8080/Tasks');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _taskItems = jsonResponse['task'];
    taskWidgets = _taskItems.map<TasksWidget>((item) {
      return TasksWidget(
        name: item['Name'],
        deadLine: DateTime(item['Year'], [item['Month'], item['Day'], item['Hour'], item['Minute'], 0, 0, 0] as int),
        isDone: item['IsDone'],
      );
    }).toList();
  } else {
    print('Failed to load tasks');
  }
}

Future<void> _fetchAssignments() async {
  final url = Uri.parse('http://10.0.2.2:8080/Assignments');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _assignmentItems = jsonResponse['assignment'];
    assignmentWidgets = _assignmentItems.map<AssignmentsWidget>((item) {
      return AssignmentsWidget(
        assignmentTitle: item['Title'],
        deadLine: DateTime(item['Year'], [item['Month'], item['Day'], item['Hour'], item['Minute'], 0, 0, 0] as int),
        isDone: item['IsDone'],
      );
    }).toList();
  } else {
    print('Failed to load assignments');
  }
}

Future<void> _fetchNews() async {
  final url = Uri.parse('http://10.0.2.2:8080/News');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _newsItems = jsonResponse['news'];
    newsWidgets = _newsItems.map<NewsWidget>((item) {
      return NewsWidget(
        newsTitle: item['Title'],
        previewDetails: item['Details'],
        newsUrl: item['webUrl'],
        imageUrl: item['imageUrl'],
      );
    }).toList();
  } else {
    print('Failed to load news');
  }
}
