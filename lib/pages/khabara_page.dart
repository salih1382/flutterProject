import 'package:flutter/material.dart';
import '../globals.dart' as globals;

class KhabaraPage extends StatefulWidget {
  KhabaraPage({required this.id, super.key});

  String id;

  @override
  State<KhabaraPage> createState() => KhabaraPageState();
}

class KhabaraPageState extends State<KhabaraPage> {
  @override
  void initState() {
    super.initState();
    _updateNews();
  }

  Future<void> _updateNews() async {
      await globals.fetchNews();
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
                        Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text("خبرا",
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    fontFamily: "BTitr",
                                    fontSize: screenWidth*0.044,
                                    fontWeight: FontWeight.bold)),
                            IconButton(
                              onPressed: () {
                                globals.fetchNews();
                                setState(() {

                                });
                              },
                              icon: Icon(
                                Icons.refresh,
                                color: const Color(0xFF7A0C31),
                                size: screenWidth * 0.063,
                              ),
                            ),
                          ],
                        ),
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
              Expanded(child: SingleChildScrollView(
                child: Column(
                  children: globals.newsWidgets,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
