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
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                fontSize: 21,
                                fontWeight: FontWeight.bold)),
                        Text("ترم بهار 1403",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: "BTitr",
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.5))),
                      ],
                    ),
                    FloatingActionButton.extended(
                        onPressed: () {},
                        backgroundColor: Color(0xFF7A0C31),
                        icon: Icon(
                          Icons.add_circle,
                          color: Color(0xFFAFBBC1),
                          size: 30,
                        ),
                        label: Text("افزودن کلاس",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color(0xFFAFBBC1),
                                fontFamily: "BTitr",
                                fontSize: 14,
                                fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              SizedBox(height: 29),
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
              SizedBox(height: 15),
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
              SizedBox(height: 15),
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
        child: Icon(
          Icons.calendar_month,
          color: Color(0xFFAFBBC1),
          size: 30,
        ),
        shape: CircleBorder(),
        backgroundColor: Color(0xFF7A0C31),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
