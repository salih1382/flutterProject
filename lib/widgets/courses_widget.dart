import 'package:flutter/material.dart';
import '../classes/teacher.dart';
import '../classes/student.dart';

class CoursesWidget extends StatelessWidget {
  CoursesWidget(
      {required this.courseTitle,
      required this.teacherFullName,
      required this.units,
      required this.remainingAssignments,
      required this.topStudentFullName,
      super.key});

  String courseTitle;
  String teacherFullName;
  int units;
  int remainingAssignments;
  String topStudentFullName;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(bottom: screenHeight*0.014),
      height: screenHeight * 0.200,
      width: screenWidth * 0.896,
      decoration: BoxDecoration(
          color: const Color(0xFF7A0C31).withOpacity(0.9),
          borderRadius: BorderRadius.circular(screenWidth * 0.042)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.052, vertical: screenHeight * 0.014),
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
                      size: screenWidth * 0.063,
                      color: const Color(0xFFAFBBC1),
                    ),
                    SizedBox(
                      width: screenWidth * 0.010,
                    ),
                    Text(courseTitle,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: const Color(0xFFAFBBC1),
                            fontFamily: "BNazanin",
                            fontSize: screenWidth * 0.033,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                Text("استاد: $teacherFullName",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: const Color(0xFFAFBBC1),
                        fontFamily: "BNazanin",
                        fontSize: screenWidth * 0.029,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            Text("___________________________________________________",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: const Color(0xFFAFBBC1),
                    fontFamily: "BNazanin",
                    fontSize: screenWidth * 0.033,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.104),
              child: Column(
                children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.onetwothree,
                        color: const Color(0xFFAFBBC1),
                        size: screenWidth * 0.052,
                      ),
                      SizedBox(
                        width: screenWidth * 0.010,
                      ),
                      Text("تعداد واحد: $units",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: const Color(0xFFAFBBC1),
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.edit_note,
                        color: const Color(0xFFAFBBC1),
                        size: screenWidth * 0.052,
                      ),
                      SizedBox(
                        width: screenWidth * 0.010,
                      ),
                      Text("تکالیف باقی مانده: $remainingAssignments",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: const Color(0xFFAFBBC1),
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.025,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.010,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Icon(
                        Icons.beenhere,
                        color: const Color(0xFFAFBBC1),
                        size: screenWidth * 0.052,
                      ),
                      SizedBox(
                        width: screenWidth * 0.010,
                      ),
                      Text("دانشجوی ممتاز: $topStudentFullName",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: const Color(0xFFAFBBC1),
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.025,
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
