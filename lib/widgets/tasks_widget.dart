import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_project/globals.dart' as globals;
import '../pages/login_page.dart' as Login;

class TasksWidget extends StatelessWidget {
  TasksWidget({
    required this.id,
    required this.title,
    required this.deadLine,
    this.isDone = false,
    super.key,
  });

  String id;
  String title;
  DateTime deadLine;
  bool isDone;

  Future<void> _doneTask() async {
    final url = Uri.parse('http://192.168.20.106:8080/DoneTask');
    final response = await http
        .post(
          url,
          headers: {'Content-Type': 'application/json'},
          body: json.encode({'id': id, 'title': title}),
        )
        .timeout(const Duration(seconds: 200));
    print(response.body);
  }

  Future<void> _deleteTask() async {
    final url = Uri.parse('http://192.168.20.106:8080/DeleteTask');
    final response = await http
        .post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'id': id, 'Title': title}),
    )
        .timeout(const Duration(seconds: 200));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    if (isDone) {
      return Container(
        margin: EdgeInsets.only(bottom: screenHeight * 0.010),
        height: screenHeight * 0.058,
        width: screenWidth * 0.896,
        decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(screenWidth * 0.042)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.052),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.005,
                  ),
                  Text("${deadLine.hour.toString()}:${deadLine.minute.toString()}",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.025,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5))),
                  Text(title,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: screenWidth * 0.044,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _deleteTask();
                    },
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: screenWidth * 0.063,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: screenHeight * 0.010),
        height: screenHeight * 0.058,
        width: screenWidth * 0.896,
        decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(screenWidth * 0.042)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.052),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: screenHeight * 0.005,
                  ),
                  Text("${deadLine.hour.toString()}:${deadLine.minute.toString()}",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.025,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5))),
                  Text(title,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: screenWidth * 0.044,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      _deleteTask();
                    },
                    icon: Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: screenWidth * 0.063,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth * 0.031,
                  ),
                  IconButton(
                    onPressed: () {
                      _doneTask();
                    },
                    icon: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: screenWidth * 0.063,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }
  }
}
