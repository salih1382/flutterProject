import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:ui';

import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class AssignmentsWidget extends StatefulWidget {
  AssignmentsWidget(
      {required this.assignmentTitle,
      required this.deadLine,
      this.isDone = false,
      super.key});

  String assignmentTitle;
  DateTime deadLine;
  bool isDone;

  @override
  State<AssignmentsWidget> createState() => _AssignmentsWidgetState();
}

class _AssignmentsWidgetState extends State<AssignmentsWidget> {
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

    if (widget.isDone) {
      return Container(
        margin: EdgeInsets.only(bottom: screenHeight * 0.010),
        height: screenHeight * 0.058,
        width: screenWidth * 0.896,
        decoration: BoxDecoration(
            color: const Color(0xFFD9D9D9),
            borderRadius: BorderRadius.circular(screenWidth * 0.042)),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.052),
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
                      size: screenWidth * 0.063,
                    ),
                    SizedBox(
                      width: screenWidth * 0.031,
                    ),
                    Text(widget.assignmentTitle,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.044,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Text(widget.deadLine.toString(),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: screenWidth * 0.025,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5))),
              ],
            ),
          ),
        ),
      );
    } else {
      return MaterialButton(
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
                  padding:
                      EdgeInsets.symmetric(horizontal: screenWidth * 0.083),
                  child: SizedBox(
                    width: screenWidth * 0.900,
                    height: screenHeight * 0.300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.rtl,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                Text(widget.assignmentTitle,
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
                                Text('${widget.deadLine.difference(DateTime.now()).inDays} روز',
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
                                          Radius.circular(screenWidth * 0.021)),
                                    ),
                                    contentPadding: EdgeInsets.only(
                                      right: screenWidth * 0.030,
                                      left: screenWidth * 0.030,
                                    ),
                                    hintTextDirection: TextDirection.rtl,
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
                                    Radius.circular(screenWidth * 0.021)),
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
                                  color:
                                      const Color(0xFFAFBBC1).withOpacity(0.5),
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          textDirection: TextDirection.rtl,
                          children: [
                            Text("بارگذاری تمرین:",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFD0D0D0),
                                  fontFamily: "BTitr",
                                  fontSize: screenWidth * 0.025,
                                  fontWeight: FontWeight.bold,
                                )),
                            Container(
                              width: screenWidth * 0.30,
                              height: screenHeight * 0.027,
                              decoration: BoxDecoration(
                                color: const Color(0xFFD0D0D0),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.021)),
                                border: Border.all(
                                    color: const Color(0xFF1D7084),
                                    width: screenWidth * 0.002),
                              ),
                              child: Text(
                                  (_fileName == null && _filePath == null)
                                      ? ""
                                      : "$_fileName: $_filePath",
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
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.radio_button_unchecked,
                        color: Colors.red,
                        size: screenWidth * 0.063,
                      ),
                    ),
                    SizedBox(
                      width: screenWidth * 0.031,
                    ),
                    Text(widget.assignmentTitle,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontFamily: "BNazanin",
                          fontSize: screenWidth * 0.044,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
                Text('${Jalali.fromDateTime(widget.deadLine).hour}:${Jalali.fromDateTime(widget.deadLine).minute}' ,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontFamily: "BNazanin",
                        fontSize: screenWidth * 0.025,
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.5))),
              ],
            ),
          ),
        ),
      );
    }
  }
}