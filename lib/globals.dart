import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'widgets/assignments_widget.dart';
import 'widgets/courses_widget.dart';
import 'widgets/done_assignments_card_widget.dart';
import 'widgets/news_widget.dart';
import 'widgets/tasks_widget.dart';

var assignmentWidgets = <AssignmentsWidget>[];
var courseWidgets = <CoursesWidget>[];
var doneAssignmentCardWidgets = <DoneAssignmentsCardWidget>[];
var newsWidgets = <NewsWidget>[];
var taskWidgets = <TasksWidget>[];
List<dynamic> _newsItems = [];

Future<void> update() async {
  await _fetchNews();
}

Future<void> _fetchNews() async {
  final url = Uri.parse('http://10.0.2.2:8080/News');
  final response = await http.post(url);

  if (response.statusCode == 200) {
    final jsonResponse = json.decode(utf8.decode(response.bodyBytes));
    _newsItems = jsonResponse['news'];
    newsWidgets = _newsItems.map<NewsWidget>((item) {
      return NewsWidget(
        newsTitle: item['Title'] ,
        previewDetails: item['Details'] ,
        newsUrl: item['webUrl'] ,
        imageUrl: item['imageUrl'] ,
      );
    }).toList();
  } else {
    print('Failed to load news');
  }
}