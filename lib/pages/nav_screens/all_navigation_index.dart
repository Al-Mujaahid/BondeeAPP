import 'package:bondee/pages/nav_screens/searches/filtered_search.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:flutter/material.dart';
import 'package:bondee/pages/nav_screens/searches/search_page.dart';
import 'chatting/chat_screen.dart';
import 'chatting/individual_chat.dart';
import 'home/home_page_of_people/home_tab_index.dart';

class Navigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationState();
  }
}

//FriendsPage
class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomeTabIndex(),
    SearchPage(),
    ChattingPage(),
    FilteredSearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: colorB,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: colorB,
            label: "",
            icon: Icon(
              Icons.home_filled,
              //color: colorW,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: colorB,
            label: "",
            icon: Icon(
              Icons.search_outlined,
              //color: colorW,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: colorB,
            label: "",
            icon: Icon(
              Icons.chat_outlined,
              //color: colorW,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: colorB,
            label: "",
            icon: Icon(
              Icons.person_outline,
              //color: colorW,
            ),
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
