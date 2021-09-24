import 'dart:convert';

import 'package:bondee/model/people_list.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePageOfPeople extends StatefulWidget {
  const HomePageOfPeople({Key key}) : super(key: key);

  @override
  _HomePageOfPeopleState createState() => _HomePageOfPeopleState();
}

class _HomePageOfPeopleState extends State<HomePageOfPeople> {
  var peoplees = [];
  Future loadPeopleesList() async {
    String bondee_people =
        await rootBundle.loadString('assets/data/bondee_people.json');
    List allFrinds = json.decode(bondee_people);
    List<PeopleesLists> _peoplees =
        allFrinds.map((json) => PeopleesLists.fromJson(json)).toList();
    setState(() {
      peoplees = _peoplees;
    });
  }

  @override
  void initState() {
    loadPeopleesList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorB,
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: peoplees.length,
          itemBuilder: (BuildContext context, int index) {
            PeopleesLists peopleed = peoplees[index];
            return Container(
              width: double.infinity,
              child: SideSpace(
                  10,
                  10,
                  Column(
                    children: [
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage(peopleed.profile_pic),
                                          fit: BoxFit.fill)),
                                  width: 114,
                                  height: 155),
                            ),
                            XSpace(7),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextOf(peopleed.full_name, colorW, 18,
                                        FontWeight.w600),
                                    Container(
                                      width: 230,
                                      child: TextOf(peopleed.bio, colorW, 18,
                                          FontWeight.w300),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        XSpace(20),
                                        InkWell(
                                          child: Container(
                                              width: 120,
                                              height: 40,
                                              decoration:
                                                  BoxDecoration(color: colorp3),
                                              child: Center(
                                                child: TextOf(
                                                    "View profile",
                                                    colorB,
                                                    20,
                                                    FontWeight.w600),
                                              )),
                                        )
                                      ],
                                    ),
                                  ]),
                            )
                          ]),
                      Divider(
                        color: colorG,
                      )
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }
}
