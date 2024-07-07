import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'about_me_page.dart';
import 'sara_page.dart';
import 'kara_page.dart';
import 'classa_page.dart';
import 'tamrina_page.dart';
import 'khabara_page.dart';

const _kPages = <String, IconData>{
  'تمرینا': Icons.edit_note,
  'خبرا': Icons.newspaper,
  'سرا': Icons.home,
  'کلاسا': Icons.co_present,
  'کارا': Icons.checklist,
};

class ConvexAppExample extends StatefulWidget {
  const ConvexAppExample({super.key});

  @override
  _ConvexAppExampleState createState() => _ConvexAppExampleState();
}

class _ConvexAppExampleState extends State<ConvexAppExample> {
  TabStyle _tabStyle = TabStyle.reactCircle;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        body: const TabBarView(
          children: [
            tamrinaPage(),
            khabaraPage(),
            saraPage(),
            classaPage(),
            karaPage(),
          ],
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.person,
              color: Color(0xFFAFBBC1),
              size: 63,
            ),
            onPressed: () => Get.to(AboutMePage()),
          ),
          actions: [
            Text("خروج",
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Color(0xFFAFBBC1),
                    fontFamily: "BTitr",
                    fontSize: 21,
                    fontWeight: FontWeight.bold)),
            SizedBox(width: 5,),
            Icon(
              Icons.exit_to_app,
              color: Color(0xFFAFBBC1),
              size: 63,
            ),
            SizedBox(
              width: 15,
            )
          ],
          toolbarHeight: 80,
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: Color(0xFF7A0C31),
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          const <int, dynamic>{},
          style: _tabStyle,
          backgroundColor: Color(0xFF7A0C31),
          items: <TabItem>[
            for (final entry in _kPages.entries)
              TabItem(icon: entry.value, title: entry.key),
          ],
          onTap: (int i) => print('click index=$i'),
        ),
      ),
    );
  }
}
