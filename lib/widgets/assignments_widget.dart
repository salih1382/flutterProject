import 'package:flutter/material.dart';
import 'dart:ui';

class AssignmentsWidget extends StatelessWidget {
  AssignmentsWidget(
      {required this.assignmentTitle,
      required this.deadLine,
      this.isDone = false,
      super.key});

  String assignmentTitle;
  DateTime deadLine;
  bool isDone;

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Container(
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              textDirection: TextDirection.rtl,
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.red,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(this.assignmentTitle,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontFamily: "BNazanin",
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Text(this.deadLine.toString(),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5))),
              ],
            ),
          ),
        ),
        height: 60,
        width: 430,
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(20)),
      );
    } else {
      return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                  Icon(
                    Icons.radio_button_unchecked,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(this.assignmentTitle,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
              Text(this.deadLine.toString(),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontFamily: "BNazanin",
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black.withOpacity(0.5))),
            ],
          ),
        ),
        height: 60,
        width: 430,
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(20)),
      );
    }
  }
}
