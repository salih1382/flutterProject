import 'package:flutter/material.dart';
import '../classes/teacher.dart';
import '../classes/student.dart';

class CoursesWidget extends StatelessWidget {
  CoursesWidget(
      {required this.courseTitle,
      required this.teacher,
      required this.units,
      required this.remainingAssignments,
      required this.topStudent,
      super.key});

  String courseTitle;
  Teacher teacher;
  int units;
  int remainingAssignments;
  Student topStudent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 430,
      decoration: BoxDecoration(
          color: Color(0xFF7A0C31).withOpacity(0.9),
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Icon(
                      Icons.school,
                      size: 30,
                      color: Color(0xFFAFBBC1),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(this.courseTitle,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Color(0xFFAFBBC1),
                            fontFamily: "BNazanin",
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Text("استاد: ${this.teacher}",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Color(0xFFAFBBC1),
                        fontFamily: "BNazanin",
                        fontSize: 14,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Text("___________________________________________________",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color(0xFFAFBBC1),
                    fontFamily: "BNazanin",
                    fontSize: 16,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.onetwothree,
                        color: Color(0xFFAFBBC1),
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("تعداد واحد: ${this.units}",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xFFAFBBC1),
                              fontFamily: "BNazanin",
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.edit_note,
                        color: Color(0xFFAFBBC1),
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("تکالیف باقی مانده: ${this.remainingAssignments}",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xFFAFBBC1),
                              fontFamily: "BNazanin",
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.beenhere,
                        color: Color(0xFFAFBBC1),
                        size: 25,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("دانشجوی ممتاز: ${this.topStudent}",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xFFAFBBC1),
                              fontFamily: "BNazanin",
                              fontSize: 12,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
