import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'login_page.dart';
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

class HomePage extends StatefulWidget {
  HomePage({required this.id, super.key});

  String id;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TabStyle _tabStyle = TabStyle.reactCircle;


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return DefaultTabController(
      length: 5,
      initialIndex: 2,
      child: Scaffold(
        body: TabBarView(
          children: [
            TamrinaPage(id: widget.id,),
            KhabaraPage(id: widget.id,),
            SaraPage(id: widget.id,),
            ClassaPage(id: widget.id,),
            KaraPage(id: widget.id),
          ],
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.person,
              color: const Color(0xFFAFBBC1),
              size: screenWidth * 0.131,
            ),
            onPressed: () => Get.to(AboutMePage(id: widget.id,)),
          ),
          actions: [
            MaterialButton(
              onPressed: () => Get.offAll(LoginPage()),
              child: Row(
                children: [
                  Text("خروج",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: const Color(0xFFAFBBC1),
                          fontFamily: "BTitr",
                          fontSize: screenWidth * 0.044,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    width: screenWidth * 0.010,
                  ),
                  Icon(
                    Icons.exit_to_app,
                    color: const Color(0xFFAFBBC1),
                    size: screenWidth * 0.131,
                  )
                ],
              ),
            )
          ],
          toolbarHeight: screenHeight * 0.077,
          elevation: 10,
          shadowColor: Colors.black,
          backgroundColor: const Color(0xFF7A0C31),
        ),
        bottomNavigationBar: ConvexAppBar.badge(
          const <int, dynamic>{},
          style: _tabStyle,
          backgroundColor: const Color(0xFF7A0C31),
          items: <TabItem>[
            for (final entry in _kPages.entries)
              TabItem(icon: entry.value, title: entry.key),
          ],
        ),
      ),
    );
  }
}
