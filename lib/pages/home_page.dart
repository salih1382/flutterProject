import 'package:flutter/material.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'about_me_page.dart';
import 'sara_page.dart';
import 'kara_page.dart';
import 'classa_page.dart';
import 'tamrina_page.dart';
import 'khabara_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentPage = 4;
final _pageController = PageController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          tamrinaPage(),
          khabaraPage(),
          classaPage(),
          karaPage(),
          saraPage(),
        ],
        onPageChanged: (index) {
          // Use a better state management solution
          // setState is used for simplicity
          setState(() => _currentPage = index);
        },
      ),
      bottomNavigationBar: BottomBar(
        selectedIndex: _currentPage,
        onTap: (int index) {
          _pageController.jumpToPage(index);
          setState(() => _currentPage = index);
        },
        items: <BottomBarItem>[
          BottomBarItem(
            icon: Icon(Icons.edit_note),
            title: Text('تمرینا'),
            activeColor: Colors.black,
          ),
          BottomBarItem(
            icon: Icon(Icons.newspaper),
            title: Text('خبرا'),
            activeColor: Colors.red,
          ),
          BottomBarItem(
            icon: Icon(Icons.co_present),
            title: Text('کلاسا'),
            activeColor: Colors.greenAccent.shade700,
          ),
          BottomBarItem(
            icon: Icon(Icons.checklist),
            title: Text('کارا'),
            activeColor: Colors.orange,
          ),
          BottomBarItem(
            icon: Icon(Icons.home),
            title: Text('سرا',),
            activeColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
