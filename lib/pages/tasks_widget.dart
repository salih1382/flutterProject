import 'package:flutter/material.dart';

class TasksWidget extends StatelessWidget {
  TasksWidget({required this.name, required this.deadLine, this.isDone = false, super.key});
  String name;
  String deadLine;
  bool isDone;

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(this.deadLine,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5))),
                  Text(this.name,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: 21,
                        fontWeight: FontWeight.bold,)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
        height: 60,
        width: 430,
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(20)),
      );
    } else {
      return Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            textDirection: TextDirection.rtl,
            children: [
              Column(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5,),
                  Text(this.deadLine,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.5))),
                  Text(this.name,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: 21,
                        fontWeight: FontWeight.bold,)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.cancel,
                    color: Colors.red,
                    size: 30,
                  ),
                  SizedBox(width: 15,),
                  Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
        height: 60,
        width: 430,
        decoration: BoxDecoration(
            color: Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(20)),
      );
    }
  }
}
