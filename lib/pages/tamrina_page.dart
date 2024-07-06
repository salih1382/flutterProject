import 'package:flutter/material.dart';
import 'dart:ui';

class tamrinaPage extends StatefulWidget {
  const tamrinaPage({super.key});

  @override
  State<tamrinaPage> createState() => _tamrinaPageState();
}

class _tamrinaPageState extends State<tamrinaPage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFAFBBC1),
      body: Center(
        child: Container(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.person, color: Color(0xFF7A0C31), size: 63),
                    Icon(Icons.menu_outlined,
                        color: Color(0xFF7A0C31), size: 63)
                  ],
                ),
              ),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("تمرین ها",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: 21,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("24 فروردین 1403",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    Icon(Icons.calendar_month, color: Color(0xFF7A0C31), size: 25)
                  ],
                ),
              ),
              SizedBox(height: 29),
              Container(
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
                          SizedBox(width: 15,),
                          Text("تمرین مینی پروژه AP",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Text("4:00 عصر",
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
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
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
                          SizedBox(width: 15,),
                          Text("تمرین مدار منطقی 1",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Text("6:00 عصر",
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
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
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
                            SizedBox(width: 15,),
                            Text("تمرین ریاضی 2",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontFamily: "BNazanin",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,)),
                          ],
                        ),
                        Text("12:00 ظهر",
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
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
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
                            SizedBox(width: 15,),
                            Text("تمرین معادلات دیفرانسیل",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontFamily: "BNazanin",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,)),
                          ],
                        ),
                        Text("9:00 صبح",
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
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
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
                            SizedBox(width: 15,),
                            Text("تمرین معماری کامپیوتر",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  fontFamily: "BNazanin",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,)),
                          ],
                        ),
                        Text("9:00 صبح",
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
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
