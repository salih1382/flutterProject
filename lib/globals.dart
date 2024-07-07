import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

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

void update(){
  courseWidgets.add(CoursesWidget(courseTitle: "به نام خدا", teacher: Teacher(id: 1, name: "جابر", familyName: "ابن حیان", password: "12345678"), units: 3, remainingAssignments: 5, topStudent: Student(id: 1, name: "ali", familyName: "hosseini")));
  assignmentWidgets.add(AssignmentsWidget(assignmentTitle: "تمرین 1", deadLine: DateTime(1382)));
  doneAssignmentCardWidgets.add(DoneAssignmentsCardWidget(assignmentTitle: "تمرین 0"));
  newsWidgets.add(NewsWidget(newsTitle: "خبر 1", previewDetails: "عالیست", newsUrl: "www.google.com"));
  taskWidgets.add(TasksWidget(name: "تسک 1", deadLine: DateTime(1382)));
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
