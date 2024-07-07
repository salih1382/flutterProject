import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter_project/classes/student.dart';
import 'package:flutter_project/classes/teacher.dart';

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

void update() {
  courseWidgets.add(CoursesWidget(
      courseTitle: "به نام خدا",
      teacher: Teacher(
          id: 1, name: "جابر", familyName: "ابن حیان", password: "12345678"),
      units: 3,
      remainingAssignments: 5,
      topStudent: Student(id: 1, name: "ali", familyName: "hosseini")));
  assignmentWidgets.add(
      AssignmentsWidget(assignmentTitle: "تمرین 1", deadLine: DateTime(1382)));
  doneAssignmentCardWidgets
      .add(DoneAssignmentsCardWidget(assignmentTitle: "تمرین 0"));
  newsWidgets.add(NewsWidget(
    newsTitle: "خبر 1",
    previewDetails: "عالیست",
    newsUrl: "https://lumacity.ir",
    imageUrl:
        "https://news.sbu.ac.ir/documents/3740662/307612523/%D8%B3%D9%88%D9%85%DB%8C%D9%86+%D8%AC%D8%B4%D9%86%D9%88%D8%A7%D8%B1%D9%87+%D8%A2%D9%85%D9%88%D8%B2%D8%B4%DB%8C+%D9%88+%D9%81%D8%B1%D9%87%D9%86%DA%AF%DB%8C+%D8%AF%D8%A7%D9%86%D8%B4%D8%AC%D9%88%DB%8C%D8%A7%D9%86+%D8%AE%D8%A7%D8%B1%D8%AC%DB%8C-+%D8%AA%DB%8C%D8%B1+1403+%2825%29.jpg/7eea2533-71fe-8e23-0527-f32495724b54?t=1720260109544",
  ));
  taskWidgets.add(TasksWidget(name: "تسک 1", deadLine: DateTime(1382)));
}

void updateNews() async {
  List<dynamic> items = await fetchJson("http://10.0.2.2:8000/News");
  newsWidgets = [];
  for (dynamic item in items) {
    newsWidgets.add(NewsWidget(
      newsTitle: item[0],
      previewDetails: item[1],
      newsUrl: item[2],
      imageUrl: item[4],
    ));
  }
}

Future<List<dynamic>> fetchJson(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('Failed to load data');
  }
}

// late final Socket socket;
//
// Future<void> read()  async {
//   socket.write("READ");
//
//   socket.listen(
//         (Uint8List data) {
//       final serverResponse = String.fromCharCodes(data);
//       if(serverResponse.isEmpty){
//         return;
//       } else {
//         var arr = serverResponse.split("\n");
//         contacts = [];
//         for (int i = 0; i < arr.length; i++) {
//           var temp = arr[i].split("-");
//           contacts.add(ContactItem(id: int.parse(temp[0]),
//               name: temp[1],
//               number: int.parse(temp[2])));
//         }
//       }
//     },
//
//     onError: (error) {
//       print("### ON ERROR ### $error");
//       socket.destroy();
//     },
//
//     onDone: () {
//       socket.destroy();
//     },
//   );
// }
// void delete(int id) {
//   socket.write("DELETE-$id");
// }
// void create(int id, String name, String num) {
//   socket.write("CREATE-$id-$name-$num");
// }
// void update(int id, String name, int num) {
//   socket.write("UPDATE-$id-$name-$num");
// }
