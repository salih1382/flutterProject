import 'dart:convert';

import 'package:flutter/material.dart';
import 'login_page.dart';
import '../globals.dart' as globals;
import 'package:http/http.dart' as http;

class AboutMePage extends StatefulWidget {
  AboutMePage({required this.id, super.key});

  String id;

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  void initState() {
    super.initState();
    _updateStudentDetails();
  }

  Future<void> _updateStudentDetails() async {
    await globals.fetchStudentDetails(widget.id);
  }

  bool _isEdit = false;
  final TextEditingController _textEditingController = TextEditingController(
    text: globals.studentDetails['Name'] +
        ' ' +
        globals.studentDetails['Lastname'],
  );

  Future<void> _changeNameAccount() async{
    final url = Uri.parse('http://192.168.20.106:8080/ChangeStudentDetailsHandler');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'id': widget.id, 'Name': _textEditingController.text.trimLeft().split(' ').first, 'familyName': _textEditingController.text.trimLeft().substring(_textEditingController.text.trimLeft().indexOf(' ') + 1)}),
    ).timeout(const Duration(seconds: 200));
    print(response.body);
  }

  Future<void> _deleteAccount() async{
    final url = Uri.parse('http://192.168.20.106:8080/DeleteAccount');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'id': widget.id}),
    ).timeout(const Duration(seconds: 200));
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        shape: const CircleBorder(),
        backgroundColor: const Color(0xFF7A0C31),
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: const Color(0xFFAFBBC1),
          size: screenWidth * 0.063,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      body: Container(
        color: const Color(0xFF7A0C31),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.06),
            CircleAvatar(
              radius: screenWidth * 0.13,
              backgroundColor: const Color(0xFFAFBBC1),
              child: Icon(
                Icons.person,
                color: const Color(0xFF7A0C31),
                size: screenWidth * 0.2,
              ),
            ),
            SizedBox(height: screenHeight * 0.017),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: [
                _isEdit
                    ? Container(
                        width: screenWidth * 0.4,
                        height: screenHeight * 0.04,
                        decoration: BoxDecoration(
                          color: const Color(0xFFD0D0D0),
                          borderRadius: BorderRadius.all(
                              Radius.circular(screenWidth * 0.05)),
                        ),
                        child: TextFormField(
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          controller: _textEditingController,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(screenWidth * 0.05)),
                              ),
                              contentPadding: EdgeInsets.only(
                                  right: screenWidth * 0.042,
                                  left: screenWidth * 0.042,
                                  top: screenHeight * 0.02),
                              hintTextDirection: TextDirection.rtl,
                              hintText: "نام کاربری"),
                        ),
                      )
                    : Text(
                        globals.studentDetails['Name'] +
                            ' ' +
                            globals.studentDetails['Lastname'],
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: screenWidth * 0.04),
                      ),
                IconButton(
                  onPressed: () {
                    _isEdit = !_isEdit;
                    setState(() {
                      _changeNameAccount();
                    });
                  },
                  icon: const Icon(
                    Icons.edit,
                    color: Color(0xFFAFBBC1),
                  ),
                )
              ],
            ),
            Text(
              "دانشجو",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.025),
            ),
            SizedBox(height: screenHeight * 0.047),
            Expanded(
                child: Container(
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(screenWidth * 0.1)),
                  color: const Color(0xFFAFBBC1)),
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Container(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.4,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7A0C31),
                      border: Border.all(
                          color: const Color(0xFF64122D),
                          width: screenWidth * 0.007),
                      borderRadius:
                          BorderRadius.all(Radius.circular(screenWidth * 0.04)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                "شماره دانشجویی",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                              Text(
                                widget.id,
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "_____________________________________________________________________",
                          style: TextStyle(
                            fontSize: screenWidth * 0.020,
                            fontFamily: "BNazanin",
                            decoration: TextDecoration.underline,
                            decorationThickness: screenWidth * 0.010,
                            decorationColor: const Color(0xFFAFBBC1),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                "ترم جاری",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                              Text(
                                "بهار 1403",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "_____________________________________________________________________",
                          style: TextStyle(
                            fontSize: screenWidth * 0.020,
                            fontFamily: "BNazanin",
                            decoration: TextDecoration.underline,
                            decorationThickness: screenWidth * 0.010,
                            decorationColor: const Color(0xFFAFBBC1),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                "تعداد واحد",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                              Text(
                                globals.studentDetails['Units'],
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "_____________________________________________________________________",
                          style: TextStyle(
                            fontSize: screenWidth * 0.020,
                            fontFamily: "BNazanin",
                            decoration: TextDecoration.underline,
                            decorationThickness: screenWidth * 0.010,
                            decorationColor: const Color(0xFFAFBBC1),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.6,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            textDirection: TextDirection.rtl,
                            children: [
                              Text(
                                "معدل کل",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                              Text(
                                globals.studentDetails['GPA'],
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  SizedBox(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => Colors.black),
                      ),
                      onPressed: () {
                        _deleteAccount();
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      child: Text(
                        "حذف حساب کاربری",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: const Color(0xFFAFBBC1),
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  SizedBox(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) => const Color(0xFF7A0C31)),
                      ),
                      onPressed: () => Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage())),
                      child: Text(
                        "خروج از حساب کاربری",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          color: const Color(0xFFAFBBC1),
                          fontWeight: FontWeight.w600,
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
