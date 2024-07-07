import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:ui';

import 'package:get/get.dart';

class tamrinaPage extends StatefulWidget {
  const tamrinaPage({super.key});

  @override
  State<tamrinaPage> createState() => _tamrinaPageState();
}

class _tamrinaPageState extends State<tamrinaPage> {
  String? _fileName;
  String? _filePath;

  Future<void> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        _fileName = result.files.single.name;
        _filePath = result.files.single.path;
      });
    }
  }

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
                    Text("تمرین ها",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.044,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.042),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("24 فروردین 1403",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth * 0.021,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    Icon(Icons.calendar_month,
                        color: const Color(0xFF7A0C31),
                        size: screenWidth * 0.052)
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.028),
              MaterialButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => SimpleDialog(
                      backgroundColor: const Color(0xFF7A0C31),
                      titleTextStyle: TextStyle(
                        fontFamily: "BTitr",
                        fontSize: screenWidth * 0.025,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFFAFBBC1),
                      ),
                      title: Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.cancel_outlined,
                              color: const Color(0xFFAFBBC1),
                              size: screenWidth * 0.052,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                          SizedBox(
                            width: screenWidth * 0.010,
                          ),
                          const Text(
                            'جزئیات تمرین',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.083),
                          child: SizedBox(
                            width: screenWidth * 0.900,
                            height: screenHeight * 0.300,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              textDirection: TextDirection.rtl,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Text("عنوان:",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFFAFBBC1),
                                              fontFamily: "BTitr",
                                              fontSize: screenWidth * 0.025,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: screenWidth * 0.021,
                                        ),
                                        Text("تمرین مینی پروژه AP",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFFAFBBC1),
                                              fontFamily: "BNazanin",
                                              fontSize: screenWidth * 0.025,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                    Row(
                                      textDirection: TextDirection.rtl,
                                      children: [
                                        Text("ددلاین:",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFFAFBBC1),
                                              fontFamily: "BTitr",
                                              fontSize: screenWidth * 0.025,
                                              fontWeight: FontWeight.bold,
                                            )),
                                        SizedBox(
                                          width: screenWidth * 0.021,
                                        ),
                                        Text("3.5 روز دیگر",
                                            textDirection: TextDirection.rtl,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFFAFBBC1),
                                              fontFamily: "BNazanin",
                                              fontSize: screenWidth * 0.025,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.010,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Text("زمان تخمینی باقیمانده:",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFFAFBBC1),
                                          fontFamily: "BTitr",
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(
                                      width: screenWidth * 0.021,
                                    ),
                                    Container(
                                      width: screenWidth * 0.104,
                                      height: screenHeight * 0.029,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD0D0D0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                screenWidth * 0.021)),
                                        border: Border.all(
                                            color: const Color(0xFF1D7084),
                                            width: screenWidth * 0.002),
                                      ),
                                      child: TextField(
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      screenWidth * 0.021)),
                                            ),
                                            contentPadding: EdgeInsets.only(
                                              right: screenWidth * 0.030,
                                              left: screenWidth * 0.030,
                                            ),
                                            hintTextDirection:
                                                TextDirection.rtl,
                                            hintText: "5"),
                                      ),
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.010,
                                    ),
                                    Text("ساعت",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFFAFBBC1),
                                          fontFamily: "BNazanin",
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.010,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Text("توضیحات:",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFFAFBBC1),
                                          fontFamily: "BTitr",
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.005,
                                ),
                                Container(
                                  width: screenWidth * 0.833,
                                  height: screenHeight * 0.104,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFD0D0D0),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(screenWidth * 0.021)),
                                    border: Border.all(
                                        color: const Color(0xFF1D7084),
                                        width: screenWidth * 0.002),
                                  ),
                                  child: TextField(
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.right,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                screenWidth * 0.021)),
                                      ),
                                      contentPadding: EdgeInsets.only(
                                        right: screenWidth * 0.030,
                                        left: screenWidth * 0.030,
                                        top: screenWidth * 0.2,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: screenHeight * 0.010,
                                ),
                                Row(
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Text("نمره:",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFFAFBBC1),
                                          fontFamily: "BTitr",
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    SizedBox(
                                      width: screenWidth * 0.021,
                                    ),
                                    Text("ثبت نشده!",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFFAFBBC1)
                                              .withOpacity(0.5),
                                          fontFamily: "BNazanin",
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                        )),
                                  ],
                                ),
                                SizedBox(
                                  height: screenHeight * 0.010,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Text("بارگذاری تمرین:",
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFFAFBBC1),
                                          fontFamily: "BTitr",
                                          fontSize: screenWidth * 0.025,
                                          fontWeight: FontWeight.bold,
                                        )),
                                    Container(
                                      width: screenWidth * 0.40,
                                      height: screenHeight * 0.027,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFD0D0D0),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(
                                                screenWidth * 0.021)),
                                        border: Border.all(
                                            color: const Color(0xFF1D7084),
                                            width: screenWidth * 0.002),
                                      ),
                                      child: Text(
                                          (_fileName == null) ? "" : _fileName!,
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: const Color(0xFFAFBBC1),
                                            fontFamily: "BTitr",
                                            fontSize: screenWidth * 0.025,
                                            fontWeight: FontWeight.bold,
                                          )),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        _pickFile();
                                      },
                                      icon: Icon(
                                        Icons.attach_file,
                                        color: const Color(0xFFAFBBC1),
                                        size: screenWidth * 0.052,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ).then((returnVal) {
                    if (returnVal != null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('You clicked: $returnVal'),
                          action: SnackBarAction(label: 'OK', onPressed: () {}),
                        ),
                      );
                    }
                  });
                },
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      textDirection: TextDirection.rtl,
                      children: [
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.radio_button_unchecked,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text("تمرین مینی پروژه AP",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontFamily: "BNazanin",
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                )),
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
              ),
              SizedBox(height: screenHeight * 0.010),
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
                          SizedBox(
                            width: 15,
                          ),
                          Text("تمرین مدار منطقی 1",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                              )),
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
              SizedBox(height: screenHeight * 0.010),
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
                            SizedBox(
                              width: 15,
                            ),
                            Text("تمرین ریاضی 2",
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
              SizedBox(height: screenHeight * 0.010),
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
                            SizedBox(
                              width: 15,
                            ),
                            Text("تمرین معادلات دیفرانسیل",
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
              SizedBox(height: screenHeight * 0.010),
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
                            SizedBox(
                              width: 15,
                            ),
                            Text("تمرین معماری کامپیوتر",
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
