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

  String? intToMonth(int number) {
    switch (number) {
      case 1:
        return "فروردین";
      case 2:
        return "اردیبهشت";
      case 3:
        return "خرداد";
      case 4:
        return "تیر";
      case 5:
        return "مرداد";
      case 6:
        return "شهریور";
      case 7:
        return "مهر";
      case 8:
        return "آبان";
      case 9:
        return "آذر";
      case 10:
        return "دی";
      case 11:
        return "بهمن";
      case 12:
        return "اسفند";
      default:
        return null;
    }
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
                  Text("${deadLine.hour.toString()}:00",
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
                  IconButton(
                    onPressed: () {},
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
                  Text("${deadLine.hour.toString()}:00",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
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
                  IconButton(
                    onPressed: () {},
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
                    onPressed: () {},
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
