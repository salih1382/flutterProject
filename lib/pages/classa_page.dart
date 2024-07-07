import 'package:flutter/material.dart';

class classaPage extends StatefulWidget {
  const classaPage({super.key});

  @override
  State<classaPage> createState() => _classaPageState();
}

class _classaPageState extends State<classaPage> {
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
              SizedBox(height: screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.041),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("کلاس ها",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: "BTitr",
                                fontSize: screenWidth * 0.044,
                                fontWeight: FontWeight.bold)),
                        Text("ترم بهار 1403",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: "BTitr",
                                fontSize: screenWidth * 0.021,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.5))),
                      ],
                    ),
                    FloatingActionButton.extended(
                        onPressed: () {
                          showBottomSheet(
                            context: context,
                            builder: (BuildContext context) => Container(
                              width: screenWidth,
                              height: screenHeight / 3,
                              decoration: BoxDecoration(
                                  color: const Color(0xFF7A0C31),
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(
                                          screenWidth * 0.042))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: screenWidth * 0.105),
                                child: Column(
                                  children: [
                                    Text(
                                      "__________________________________",
                                      style: TextStyle(
                                        fontSize: screenWidth * 0.025,
                                        fontFamily: "BNazanin",
                                        decoration: TextDecoration.underline,
                                        decorationThickness:
                                            screenWidth * 0.015,
                                        decorationColor: const Color(0xFFAFBBC1),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight*0.019,
                                    ),
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Icon(
                                          Icons.school,
                                          size: screenWidth*0.052,
                                          color: const Color(0xFFAFBBC1),
                                        ),
                                        SizedBox(
                                          width: screenWidth*0.031,
                                        ),
                                        Text("افزودن کلاس جدید",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: const Color(0xFFAFBBC1),
                                                fontFamily: "BTitr",
                                                fontSize: screenWidth*0.044,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight*0.014,
                                    ),
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Text("کد درس:",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                color: const Color(0xFFAFBBC1),
                                                fontFamily: "BTitr",
                                                fontSize: screenWidth*0.029,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    SizedBox(
                                      height: screenHeight*0.010,
                                    ),
                                    Container(
                                      width: screenWidth*0.8,
                                      height: screenHeight*0.072,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD0D0D0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(screenWidth*0.042)),
                                        border: Border.all(
                                            color: const Color(0xFF1D7084),
                                            width: screenWidth*0.006),
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(screenWidth*0.042)),
                                            ),
                                            contentPadding: EdgeInsets.only(
                                                right: screenWidth*0.042, left: screenWidth*0.042, top: screenHeight*0.041),
                                            hintTextDirection:
                                                TextDirection.rtl,
                                            hintText:
                                                "کد گلستان درس را وارد کنید..."),
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight*0.034,
                                    ),
                                    SizedBox(
                                      width: screenWidth*0.75,
                                      height: screenHeight*0.048,
                                      child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateColor.resolveWith(
                                                  (states) =>
                                                      const Color(0xFFAFBBC1)),
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "افزودن",
                                          textDirection: TextDirection.rtl,
                                          style: TextStyle(
                                              color: const Color(0xFF7A0C31),
                                              fontFamily: "BTitr",
                                              fontWeight: FontWeight.bold,
                                              fontSize: screenWidth*0.044),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        backgroundColor: const Color(0xFF7A0C31),
                        icon: Icon(
                          Icons.add_circle,
                          color: const Color(0xFFAFBBC1),
                          size: screenWidth*0.063,
                        ),
                        label: Text("افزودن کلاس",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: const Color(0xFFAFBBC1),
                                fontFamily: "BTitr",
                                fontSize: screenWidth*0.030,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.028),
              Container(
                height: 180,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFF7A0C31).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                              Text("برنامه نویسی پیشرفته",
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xFFAFBBC1),
                                      fontFamily: "BNazanin",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Text("استاد: دکتر علی اکبری",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color(0xFFAFBBC1),
                                  fontFamily: "BNazanin",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                          "___________________________________________________",
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
                                Text("تعداد واحد: 3",
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
                                Text("تکالیف باقی مانده: 4",
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
                                Text("دانشجوی ممتاز: علی علوی",
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
              ),
              SizedBox(height: screenHeight*0.014),
              Container(
                height: 180,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFF7A0C31).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                              Text("برنامه نویسی پیشرفته",
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xFFAFBBC1),
                                      fontFamily: "BNazanin",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Text("استاد: دکتر علی اکبری",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color(0xFFAFBBC1),
                                  fontFamily: "BNazanin",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                          "___________________________________________________",
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
                                Text("تعداد واحد: 3",
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
                                Text("تکالیف باقی مانده: 4",
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
                                Text("دانشجوی ممتاز: علی علوی",
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
              ),
              SizedBox(height: screenHeight*0.014),
              Container(
                height: 180,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFF7A0C31).withOpacity(0.9),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                              Text("برنامه نویسی پیشرفته",
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xFFAFBBC1),
                                      fontFamily: "BNazanin",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Text("استاد: دکتر علی اکبری",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color(0xFFAFBBC1),
                                  fontFamily: "BNazanin",
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                      Text(
                          "___________________________________________________",
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
                                Text("تعداد واحد: 3",
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
                                Text("تکالیف باقی مانده: 4",
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
                                Text("دانشجوی ممتاز: علی علوی",
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
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF7A0C31),
        onPressed: () {},
        child: Icon(
          Icons.calendar_month,
          color: const Color(0xFFAFBBC1),
          size: screenWidth*0.063,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
