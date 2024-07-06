import 'package:flutter/material.dart';
import 'dart:html';

class NewsWidget extends StatelessWidget {
  NewsWidget(
      {required this.newsTitle,
      required this.previewDetails,
      this.image = const AssetImage("assets/images/sbu-building-real.png"),
      required this.newsUrl,
      super.key});

  String newsTitle;
  String previewDetails;
  Url newsUrl;
  AssetImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                image: image,
                fit: BoxFit.fitWidth,
                alignment: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
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
                  Text(this.newsTitle,
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
                  Text(this.previewDetails,
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
    );
  }
}
