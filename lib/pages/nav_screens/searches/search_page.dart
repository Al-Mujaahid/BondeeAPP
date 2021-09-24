import 'dart:convert';

import 'package:bondee/model/search_details.dart';
import 'package:bondee/pages/nav_screens/searches/filtered_search.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var i_p_l = [];
  Future loadChatsList() async {
    String bondee_chats = await rootBundle
        .loadString('assets/data/Interests_people_location.json');
    List allChats = json.decode(bondee_chats);
    List<SearchIPL> _chats =
        allChats.map((json) => SearchIPL.fromJson(json)).toList();
    setState(() {
      i_p_l = _chats;
    });
  }

  @override
  void initState() {
    loadChatsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorB,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Image.asset('assets/images/wordmark.png'),
            ),
            SideSpace(
              10,
              0,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                IconOf(Icons.arrow_back_ios_new_rounded, 20, colorW),
                Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: colorW, borderRadius: BorderRadius.circular(20)),
                  child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: IconOf(Icons.search, 25, Colors.grey),
                          fillColor: colorW,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: colorW,
                                  width: 1,
                                  style: BorderStyle.solid)),
                          hintText: "Interests, people, location",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w200))),
                ),
                InkWell(
                  child: Image.asset("assets/images/filter.png",
                      width: 20, height: 20),
                  onTap: () {
                    NavigateTo.next(context, FilteredSearchPage());
                  },
                ),
              ]),
            ),
            Expanded(
                child: SideSpace(
              10,
              10,
              Container(
                child: SideSpace(
                  0,
                  0,
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 6,
                        mainAxisSpacing: 6),
                    shrinkWrap: true,
                    itemCount: i_p_l.length,
                    itemBuilder: (BuildContext context, int index) {
                      SearchIPL interest_people_location = i_p_l[index];
                      return InkWell(
                        onTap: () {},
                        child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      interest_people_location.background_pic,
                                    ))),
                            child: Center(
                              child: Text(
                                  interest_people_location
                                      .interest_people_location,
                                  style: TextStyle(
                                      color: colorW,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11)),
                              //TextOf(
                              //     interest_people_location
                              //         .interest_people_location,
                              //     colorW,
                              //     11,
                              //     FontWeight.w300),
                            )),
                      );
                    },
                  ),
                ),
              ),
            ))
          ],
        )));
  }
}
