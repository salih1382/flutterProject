import 'package:flutter/material.dart';

class DoneAssignmentsCardWidget extends StatelessWidget {
  DoneAssignmentsCardWidget({required this.assignmentTitle, super.key});

  String assignmentTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 25,
          ),
          Text(
            assignmentTitle,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontFamily: "BNazanin",
                fontSize: 16,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
      height: 110,
      width: 210,
      decoration: BoxDecoration(
          color: Color(0xFFD9D9D9), borderRadius: BorderRadius.circular(20)),
    );
  }
}
