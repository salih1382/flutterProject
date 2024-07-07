import 'package:flutter/material.dart';

class DoneAssignmentsCardWidget extends StatelessWidget {
  DoneAssignmentsCardWidget({required this.assignmentTitle, super.key});

  String assignmentTitle;
  
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      height: screenHeight * 0.106,
      width: screenWidth * 0.438,
      decoration: BoxDecoration(
          color: const Color(0xFFD9D9D9),
          borderRadius: BorderRadius.circular(screenWidth * 0.042)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: screenWidth * 0.052,
          ),
          Text(
            assignmentTitle,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            style: TextStyle(
                fontFamily: "BNazanin",
                fontSize: screenWidth * 0.033,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
