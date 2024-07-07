import 'package:flutter/material.dart';

class khabaraPage extends StatefulWidget {
  const khabaraPage({super.key});

  @override
  State<khabaraPage> createState() => _khabaraPageState();
}

class _khabaraPageState extends State<khabaraPage> {
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
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  textDirection: TextDirection.rtl,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("خبرا",
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
                    Icon(
                      Icons.newspaper,
                      color: Color(0xFF7A0C31),
                      size: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29),
              Container(
                height: 180,
                width: 430,
                decoration: BoxDecoration(
                  color: Color(0xFF7A0C31).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                              AssetImage("assets/images/sbu-building-real.png"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.centerRight,
                        ),
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(20)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          textDirection: TextDirection.rtl,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("اطلاعیه آموزشی",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xFFAFBBC1),
                                    fontFamily: "BTitr",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                "قابل توجه دانشجویان دکترا ورودی ۹۸ امکان حذف یک نیمسال بدون احتساب در سنوات...",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xFFAFBBC1),
                                    fontFamily: "BNazanin",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "مطالعه بیشتر...",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: const Color(0xFFAFBBC1),
                                      fontSize: 12,
                                      fontFamily: "BNazanin",
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color(0xFFAFBBC1),
                                      decorationThickness: 3),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 180,
                width: 430,
                decoration: BoxDecoration(
                  color: Color(0xFF7A0C31).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                          AssetImage("assets/images/sbu-building-real.png"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.centerRight,
                        ),
                        borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          textDirection: TextDirection.rtl,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("اطلاعیه آموزشی",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xFFAFBBC1),
                                    fontFamily: "BTitr",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                "قابل توجه دانشجویان دکترا ورودی ۹۸ امکان حذف یک نیمسال بدون احتساب در سنوات...",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xFFAFBBC1),
                                    fontFamily: "BNazanin",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "مطالعه بیشتر...",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: const Color(0xFFAFBBC1),
                                      fontSize: 12,
                                      fontFamily: "BNazanin",
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color(0xFFAFBBC1),
                                      decorationThickness: 3),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 180,
                width: 430,
                decoration: BoxDecoration(
                  color: Color(0xFF7A0C31).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: 180,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:
                          AssetImage("assets/images/sbu-building-real.png"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.centerRight,
                        ),
                        borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Column(
                          textDirection: TextDirection.rtl,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("اطلاعیه آموزشی",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xFFAFBBC1),
                                    fontFamily: "BTitr",
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                                "قابل توجه دانشجویان دکترا ورودی ۹۸ امکان حذف یک نیمسال بدون احتساب در سنوات...",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Color(0xFFAFBBC1),
                                    fontFamily: "BNazanin",
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "مطالعه بیشتر...",
                                  textDirection: TextDirection.rtl,
                                  style: TextStyle(
                                      color: const Color(0xFFAFBBC1),
                                      fontSize: 12,
                                      fontFamily: "BNazanin",
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                      decorationColor: const Color(0xFFAFBBC1),
                                      decorationThickness: 3),
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
