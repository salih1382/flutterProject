import 'package:flutter/material.dart';

class saraPage extends StatefulWidget {
  const saraPage({super.key});

  @override
  State<saraPage> createState() => _saraPageState();
}

class _saraPageState extends State<saraPage> {
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
              SizedBox(height: screenHeight*0.021),
              Padding(
                padding: EdgeInsets.only(right: screenWidth*0.042),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("خلاصه",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth*0.044,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.028),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight*0.072,
                    width: screenWidth*0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(screenWidth*0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.beenhere,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "بهترین نمرت 100عه",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight*0.072,
                    width: screenWidth*0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(screenWidth*0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.heart_broken,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "2 تا امتحان داری",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight*0.072,
                    width: screenWidth*0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(screenWidth*0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.watch_later,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "3 تا تمرین داری",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight*0.024),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight*0.072,
                    width: screenWidth*0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(screenWidth*0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.running_with_errors,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "2 تا تمرین پرید",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight*0.072,
                    width: screenWidth*0.260,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(screenWidth*0.042)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.sentiment_dissatisfied_sharp,
                          color: const Color(0xFF7A0C31),
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "بدترین نمرت 10عه",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.029,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: screenHeight*0.072),
              Padding(
                padding: EdgeInsets.only(right: screenWidth*0.042, left: screenWidth*0.042),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("کار های جاری",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth*0.044,
                            fontWeight: FontWeight.bold)),
                    Text("17 فروردین 1403",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth*0.021,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.5)))
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.028),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("آز ریز - تمرین 1",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "BNazanin",
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
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
              SizedBox(height: screenHeight*0.010),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    textDirection: TextDirection.rtl,
                    children: [
                      Text("تست - تمرین 1",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontFamily: "BNazanin",
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        children: [
                          Icon(
                            Icons.cancel,
                            color: Colors.red,
                            size: 30,
                          ),
                          SizedBox(
                            width: 15,
                          ),
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
              SizedBox(height: screenHeight*0.072),
              Padding(
                padding: EdgeInsets.only(right: screenWidth*0.042),
                child: Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("تمرین های انجام شده",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontFamily: "BTitr",
                            fontSize: screenWidth*0.044,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              SizedBox(height: screenHeight*0.028),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: screenHeight*0.106,
                    width: screenWidth*0.438,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(screenWidth*0.042)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "تمرین 1 معماری",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.033,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: screenHeight*0.106,
                    width: screenWidth*0.438,
                    decoration: BoxDecoration(
                        color: const Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.green,
                          size: screenWidth*0.052,
                        ),
                        Text(
                          "AP - تمرین 2",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: "BNazanin",
                              fontSize: screenWidth*0.033,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
