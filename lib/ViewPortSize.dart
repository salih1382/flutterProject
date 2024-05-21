import 'package:flutter/material.dart';

class ViewPortSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // گرفتن عرض و ارتفاع صفحه نمایش
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('عرض صفحه نمایش: $screenWidth پیکسل'),
          Text('ارتفاع صفحه نمایش: $screenHeight پیکسل'),
        ],
      ),
    );
  }
}
