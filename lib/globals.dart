import 'dart:async';
import 'dart:convert';
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

Map<String, dynamic> _studentDetails = {};
List<dynamic> _doneAssignmentCardItems = [];
List<dynamic> _courseItems = [];
List<dynamic> _taskItems = [];
List<dynamic> _assignmentItems = [];
List<dynamic> _newsItems = [];

Future<void> update(id) async {
  await _fetchStudentDetails(id);
  await _fetchNews();
  await _fetchDoneAssignmentCards(id);
  await _fetchCourses(id);
  await _fetchAssignments(id);
  await _fetchTasks(id);
}

Future<void> _fetchStudentDetails(id) async {
  final url = Uri.parse('http://192.168.160.106:8082/StudentDetails');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'id': id}),
  ).timeout(Duration(seconds: 200));
  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _studentDetails = jsonResponse['studentDetails'];
    studentDetails = {
      'Name' : _studentDetails['Name'],
      'Lastname' : _studentDetails['Lastname'],
      'Username' : _studentDetails['Username'],
      'Password' : _studentDetails['Password'],
      'Units' : _studentDetails['Units'],
      'GPA' : _studentDetails['GPA'],
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

Future<void> _fetchDoneAssignmentCards(String id) async {
  final url = Uri.parse('http://192.168.160.106:8083/DoneAssignmentCards');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'id': id}),
  ).timeout(Duration(seconds: 200));

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

Future<void> _fetchCourses(id) async {
  final url = Uri.parse('http://192.168.160.106:8084/Courses');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'id': id}),
  ).timeout(Duration(seconds: 200));

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _courseItems = jsonResponse['course'];
    courseWidgets = _courseItems.map<CoursesWidget>((item) {
      return CoursesWidget(
        courseTitle: item['Title'],
        teacherFullName: item['Teacher'],
        units: int.tryParse(item['Units'] ?? '0') ?? 0,
        remainingAssignments: int.tryParse(item['RemainingAssignments'] ?? '0') ?? 0,
        topStudentFullName: item['TopStudent'],
      );
    }).toList();
  } else {
    print('Failed to load courses');
  }
}


Future<void> _fetchTasks(id) async {
  final url = Uri.parse('http://192.168.160.106:8085/Tasks');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'id': id}),
  ).timeout(Duration(seconds: 200));
  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    print(jsonResponse['task']);
    if (jsonResponse['task'] != null && jsonResponse['task'] is List) {
      _taskItems = jsonResponse['task'];
      taskWidgets = _taskItems.map<TasksWidget>((item) {
        return TasksWidget(
          name: item['Name'],
          deadLine: DateTime(item['Year'], item['Month'], item['Day'], item['Hour'], item['Minute'], 0, 0, 0),
          isDone: item['IsDone'],
        );
      }).toList();
    } else {
      print(response.statusCode);
      print('Task data is null or not a list');
    }
  } else {
    print('Failed to load tasks');
  }
}


Future<void> _fetchAssignments(id) async {
  final url = Uri.parse('http://192.168.160.106:8086/Assignments');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'id': id}),
  ).timeout(Duration(seconds: 200));
  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    print(jsonResponse['assignment']);
    _assignmentItems = jsonResponse['assignment'];
    assignmentWidgets = _assignmentItems.map<AssignmentsWidget>((item) {
      return AssignmentsWidget(
        assignmentTitle: item['Title'],
        deadLine: DateTime(item['Year'], item['Month'], item['Day'], item['Hour'], item['Minute'], 0, 0, 0),
        isDone: item['IsDone'],
      );
    }).toList();
  } else {
    print('Failed to load assignments');
  }
}

Future<void> _fetchNews() async {
  final url = Uri.parse('http://192.168.160.106:8081/News');
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
