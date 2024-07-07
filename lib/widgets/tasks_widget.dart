import 'package:flutter/material.dart';

class TasksWidget extends StatelessWidget {
  TasksWidget(
      {required this.name,
      required this.deadLine,
      this.isDone = false,
      super.key});

  String name;
  DateTime deadLine;
  bool isDone;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    if (isDone) {
      return Container(
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
                  Text(deadLine.toString(),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.025,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5))),
                  Text(name,
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
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: screenWidth * 0.063,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    } else {
      return Container(
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
                  Text(deadLine.toString(),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.025,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5))),
                  Text(name,
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
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: screenWidth * 0.063,
                  ),
                  SizedBox(
                    width: screenWidth * 0.031,
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: screenWidth * 0.063,
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
