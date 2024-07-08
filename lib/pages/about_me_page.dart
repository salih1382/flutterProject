import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        color: const Color(0xFF7A0C31),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.06),
            CircleAvatar(
              radius: screenWidth * 0.13,
              backgroundColor: const Color(0xFFAFBBC1),
            ),
            SizedBox(height: screenHeight * 0.017),
            Text(
              "سیدعلی حسینی",
              textDirection: TextDirection.rtl,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: screenWidth * 0.04),
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
                    height: screenHeight * 0.290,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7A0C31),
                      border: Border.all(
                          color: const Color(0xFF64122D), width: screenWidth * 0.007),
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
                                "400248027",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ],
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
                                "23",
                                textDirection: TextDirection.rtl,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: screenWidth * 0.04),
                              ),
                            ],
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
                                "16.11",
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
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.edit,
                      color: Color(0xFF7A0C31),
                    ),
                    label: Text(
                      "ویرایش اطلاعات کاربری",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04),
                    ),
                    style: const ButtonStyle(),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.password,
                      color: Color(0xFF7A0C31),
                    ),
                    label: Text(
                      "تغییر رمز عبور",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.04),
                    ),
                    style: const ButtonStyle(),
                  ),
                  SizedBox(height: screenHeight *0.04),
                  SizedBox(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.black),
                      ),
                      onPressed: () => Get.offAll(const LoginPage()),
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
                  SizedBox(height: screenHeight *0.01),
                  SizedBox(
                    width: screenWidth * 0.75,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                                (states) => const Color(0xFF7A0C31)),
                      ),
                      onPressed: () => Get.offAll(const LoginPage()),
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
