import 'package:flutter/material.dart';

class karaPage extends StatefulWidget {
  const karaPage({super.key});

  @override
  State<karaPage> createState() => _karaPageState();
}

class _karaPageState extends State<karaPage> {
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
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("کار ها",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: 21,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("24 فروردین 1403",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5))),
                    Icon(Icons.calendar_month, color: Color(0xFF7A0C31), size: 25)
                  ],
                ),
              ),
              SizedBox(height: 29),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("4:00 عصر",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: "BNazanin",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5))),
                          Text("آز ریز - تمرین 1",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 15,),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("6:00 عصر",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: "BNazanin",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5))),
                          Text("تمرین الگوریتم",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 15,),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("8:00 عصر",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: "BNazanin",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5))),
                          Text("انتخاب واحد",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 15,),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("9:00 عصر",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: "BNazanin",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5))),
                          Text("تکمیل آز OS",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 15,),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Column(
                        textDirection: TextDirection.rtl,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5,),
                          Text("10:00 عصر",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  fontFamily: "BNazanin",
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.5))),
                          Text("تست - تمرین 1",
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: "BNazanin",
                                fontSize: 21,
                                fontWeight: FontWeight.bold,)),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(width: 15,),
                          Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 75),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("کار های انجام شده",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: 21,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: 29),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("تکمیل آز ریز - تمرین 0",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "BNazanin",
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough)),
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
                  ),
                ),
                height: 60,
                width: 430,
                decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 10),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("بررسی فایل های تمرین",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: 21,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough)),
                      Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 30,
                      ),
                    ],
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
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Color(0xFFAFBBC1),
          size: 30,
        ),
        shape: CircleBorder(),
        backgroundColor: Color(0xFF7A0C31),
        onPressed: () {},
      ),
    );
  }
}
