import 'package:flutter/material.dart';
import 'package:flutter_project/LoginPage.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFAFBBC1),
      body: Center(
        child: SizedBox(
          width: screenWidth,
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.08,
              ),
              SizedBox(
                  width: screenWidth * 0.24,
                  child: Image.asset("assets/images/SbuLogo.png")),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Container(
                width: screenWidth * 0.8,
                child: Column(
                  children: [
                    Stack(children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: screenHeight * 0.00577,
                              bottom: screenWidth * 0.00577),
                          width: screenWidth * 0.75,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                            border: Border.all(
                                color: Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.4)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: screenWidth * 0.042,
                                    left: screenWidth * 0.12,
                                    top: screenHeight * 0.030),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "نام کاربری"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: screenWidth * 0.155,
                          height: screenWidth * 0.155,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            border: Border.all(
                                color: Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                          ),
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Stack(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: screenHeight * 0.00577,
                              bottom: screenWidth * 0.00577),
                          width: screenWidth * 0.75,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                            border: Border.all(
                                color: Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.4)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: screenWidth * 0.12,
                                    left: screenWidth * 0.042,
                                    top: screenHeight * 0.030),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "رمز عبور"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: screenWidth * 0.155,
                          height: screenWidth * 0.155,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            border: Border.all(
                                color: Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                          ),
                          child: Icon(
                            Icons.lock_open,
                            color: Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: screenHeight * 0.01,
                    ),
                    Stack(children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(
                              top: screenHeight * 0.00577,
                              bottom: screenWidth * 0.00577),
                          width: screenWidth * 0.75,
                          height: screenHeight * 0.06,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                            border: Border.all(
                                color: Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(screenWidth * 0.4)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: screenWidth * 0.042,
                                    left: screenWidth * 0.12,
                                    top: screenHeight * 0.030),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "شماره دانشجویی"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: screenWidth * 0.155,
                          height: screenWidth * 0.155,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            border: Border.all(
                                color: Color(0xFF1D7084),
                                width: screenWidth * 0.00625),
                            borderRadius: BorderRadius.all(
                                Radius.circular(screenWidth * 0.4)),
                          ),
                          child: Icon(
                            Icons.contacts_outlined,
                            color: Color(0xFF1D7084),
                            size: screenWidth * 0.1,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Container(
                width: screenWidth * 0.75,
                height: screenHeight * 0.06,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Color(0xFF7A0C31)),
                  ),
                  onPressed: () {},
                  child: Text(
                    "ورود به حساب کاربری",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Color(0xFFAFBBC1),
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth * 0.04),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    "حساب کاربری دارید؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Color(0xFF0029FF),
                        fontSize: screenWidth * 0.04,
                        fontFamily: "BNazanin",
                        fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                      onPressed: () => Get.offAll(const LoginPage()),
                      child: Text(
                        "وارد شوید!",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Color(0xFF0029FF),
                            fontSize: screenWidth * 0.04,
                            fontFamily: "BNazanin",
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF0029FF),
                            decorationThickness: screenWidth * 0.005),
                      )),
                ],
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    Container(
                      width: screenWidth,
                      child: Image.asset("assets/images/sbu-building.png"),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
