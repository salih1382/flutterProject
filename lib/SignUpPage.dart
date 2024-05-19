import 'package:flutter/material.dart';
import 'package:flutter_project/LoginPage.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFAFBBC1),
      body: Center(
        child: SizedBox(
          width: 480,
          child: Column(
            children: [
              SizedBox(height: 50),
              SizedBox(
                  width: 120,
                  height: 120,
                  child: Image.asset("assets/images/SbuLogo.png")),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 360,
                child: Column(
                  children: [
                    Stack(children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 350,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(200)),
                            border:
                            Border.all(color: Color(0xFF1D7084), width: 2),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(200)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: 20, left: 70, top: 35),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "نام کاربری"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            border:
                            Border.all(color: Color(0xFF1D7084), width: 3),
                            borderRadius:
                            BorderRadius.all(Radius.circular(200)),
                          ),
                          child: Icon(
                            Icons.person_outline_rounded,
                            color: Color(0xFF1D7084),
                            size: 30,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Stack(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 350,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(200)),
                            border:
                            Border.all(color: Color(0xFF1D7084), width: 2),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(200)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: 70, left: 20, top: 35),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "رمز عبور"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            border:
                            Border.all(color: Color(0xFF1D7084), width: 3),
                            color: Color(0xFFD0D0D0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(200)),
                          ),
                          child: Icon(
                            Icons.lock_open,
                            color: Color(0xFF1D7084),
                            size: 30,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Stack(children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          width: 350,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            borderRadius:
                            BorderRadius.all(Radius.circular(200)),
                            border:
                            Border.all(color: Color(0xFF1D7084), width: 2),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(200)),
                                ),
                                contentPadding: EdgeInsets.only(
                                    right: 20, left: 70, top: 35),
                                hintTextDirection: TextDirection.rtl,
                                hintText: "شماره دانشجویی"),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Color(0xFFD0D0D0),
                            border:
                            Border.all(color: Color(0xFF1D7084), width: 3),
                            borderRadius:
                            BorderRadius.all(Radius.circular(200)),
                          ),
                          child: Icon(
                            Icons.contacts_outlined,
                            color: Color(0xFF1D7084),
                            size: 30,
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.all(5),
                width: 350,
                height: 60,
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
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textDirection: TextDirection.rtl,
                children: [
                  Text(
                    "حساب کاربری دارید؟",
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Color(0xFF0029FF),
                        fontSize: 20,
                        fontFamily: "BNazanin",
                        fontWeight: FontWeight.w800),
                  ),
                  TextButton(
                      onPressed:() => Get.offAll(const LoginPage()),
                      child: Text(
                        "وارد شوید!",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Color(0xFF0029FF),
                            fontSize: 20,
                            fontFamily: "BNazanin",
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline,
                            decorationColor: Color(0xFF0029FF),
                            decorationThickness: 2),
                      )),
                ],
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 480,
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
