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
      backgroundColor: const Color(0xFFAFBBC1),
      body: Center(
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight*0.021),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.042),
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
                                fontSize: screenWidth*0.044,
                                fontWeight: FontWeight.bold)),
                        Text("ترم بهار 1403",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontFamily: "BTitr",
                                fontSize: screenWidth*0.021,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.5))),
                      ],
                    ),
                    Icon(
                      Icons.newspaper,
                      color: const Color(0xFF7A0C31),
                      size: screenWidth*0.104,
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.028),
              Container(
                height: screenHeight*0.173,
                width: screenWidth*0.896,
                decoration: BoxDecoration(
                  color: const Color(0xFF7A0C31).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(screenWidth*0.042),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      width: screenWidth*0.375,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image:
                              AssetImage("assets/images/sbu-building-real.png"),
                          fit: BoxFit.fitWidth,
                          alignment: Alignment.centerRight,
                        ),
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(screenWidth*0.042)),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: screenWidth*0.083),
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
              SizedBox(height: screenHeight*0.014),
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
              SizedBox(height: screenHeight*0.014),
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
