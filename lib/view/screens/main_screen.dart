import 'package:flutter/material.dart';
import 'package:travel_app/view/screens/nav_bar_screens/feed_screen.dart';
import 'package:travel_app/view/screens/nav_bar_screens/menu_screen.dart';
import 'package:travel_app/view/screens/nav_bar_screens/progress_screen.dart';
import 'package:travel_app/view/screens/nav_bar_screens/store_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const FeedScreen(),
    const ProgressScreen(),
    Container(),
    StoreScreen(),
    const MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person,
                color: Colors.grey,
              )),
          const SizedBox(
            width: 5.0,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        backgroundColor: Colors.white,
        // elevation: 0.0,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          const BottomNavigationBarItem(
            label: 'Feed',
            icon: Icon(Icons.line_style_sharp),
          ),
          const BottomNavigationBarItem(
            label: 'Progress',
            icon: Icon(Icons.bar_chart),
          ),
          BottomNavigationBarItem(
            label: '',
            icon: Container(
              decoration: const BoxDecoration(
                color: Colors.pink,
                shape: BoxShape.circle,
              ),
              child: Container(
                margin: const EdgeInsets.all(13.0),
                child: const Icon(
                  Icons.sports_gymnastics_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Store',
            icon: Icon(Icons.shopping_bag),
          ),
          const BottomNavigationBarItem(
            label: 'menu',
            icon: Icon(Icons.more_horiz),
          ),
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
