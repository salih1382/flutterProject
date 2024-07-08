import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class SaraPage extends StatefulWidget {
  SaraPage({required this.id, super.key});

  String id;

  @override
  State<SaraPage> createState() => _SaraPageState();
}

class _SaraPageState extends State<SaraPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFAFBBC1),
      body: Center(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.021),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.042),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("خلاصه",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight * 0.072,
                    width: screenWidth * 0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.beenhere,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth * 0.052,
                        ),
                        Text(
                          "بهترین نمرت 100عه",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.072,
                    width: screenWidth * 0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.heart_broken,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth * 0.052,
                        ),
                        Text(
                          "2 تا امتحان داری",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.072,
                    width: screenWidth * 0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.watch_later,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth * 0.052,
                        ),
                        Text(
                          "3 تا تمرین داری",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.024),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight * 0.072,
                    width: screenWidth * 0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.running_with_errors,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth * 0.052,
                        ),
                        Text(
                          "2 تا تمرین پرید",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.072,
                    width: screenWidth * 0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.sentiment_dissatisfied_sharp,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth * 0.052,
                        ),
                        Text(
                          "بدترین نمرت 10عه",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth * 0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight * 0.050),
              Padding(
                padding: EdgeInsets.only(
                    right: screenWidth * 0.042, left: screenWidth * 0.042),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("کار های جاری",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold)),
                    Text("17 فروردین 1403",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.021,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5)))
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: globals.taskWidgets,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.050),
              Padding(
                padding: EdgeInsets.only(right: screenWidth * 0.042),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("تمرین های انجام شده",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              Expanded(
                child: GridView.count(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.052),
                  childAspectRatio: 2,
                  mainAxisSpacing: screenWidth * 0.042,
                  crossAxisSpacing: screenWidth * 0.042,
                  crossAxisCount: 2,
                  children: globals.doneAssignmentCardWidgets,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
