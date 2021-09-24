import 'package:bondee/pages/nav_screens/home/home_page_of_people/Invite.dart';
import 'package:bondee/pages/nav_screens/home/home_page_of_people/contact.dart';
import 'package:bondee/pages/nav_screens/home/home_page_of_people/people.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class HomeTabIndex extends StatefulWidget {
  const HomeTabIndex({Key key}) : super(key: key);

  @override
  _HomeTabIndexState createState() => _HomeTabIndexState();
}

class _HomeTabIndexState extends State<HomeTabIndex> {
  TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            backgroundColor: colorB,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/wordmark.png",
                  ),
                  SideSpace(
                    10,
                    0,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              TextOf("Discover", colorW, 30, FontWeight.w700),
                              XSpace(18),
                              CircleAvatar(
                                backgroundColor: colorW,
                                radius: 5,
                              )
                            ],
                          ),
                          Image.asset(
                            "assets/images/search.png",
                            width: 25,
                            height: 25,
                          ),
                        ]),
                  ),
                  ButtonsTabBar(
                      //buttonMargin: const EdgeInsets.only(left: 10, right: 10),
                      contentPadding:
                          const EdgeInsets.only(left: 10, right: 10),
                      controller: _tabController,
                      backgroundColor: colorp3,
                      unselectedBackgroundColor: colorB,
                      borderColor: colorW,
                      unselectedBorderColor: colorB,
                      labelStyle: TextStyle(
                          color: colorW,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      unselectedLabelStyle: TextStyle(
                          color: colorW,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                      tabs: [
                        Tab(
                          text: 'Invite',
                        ),
                        Tab(
                          text: 'People',
                          icon: null,
                        ),
                        Tab(
                          text: 'Contact',
                          icon: null,
                        )
                      ]),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      InvitePeople(),
                      HomePageOfPeople(),
                      Contact()
                    ]),
                  ),
                ],
              ),
            )));
  }
}
