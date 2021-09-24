import 'dart:convert';
import 'package:bondee/model/filtered_search.dart';
import 'package:bondee/pages/nav_screens/searches/search_page.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FilteredSearchPage extends StatefulWidget {
  const FilteredSearchPage({Key key}) : super(key: key);

  @override
  _FilteredSearchPageState createState() => _FilteredSearchPageState();
}

class _FilteredSearchPageState extends State<FilteredSearchPage> {
  var filtered_searches = [];
  Future loadFilteredSearches() async {
    String each_filtered =
        await rootBundle.loadString('assets/data/filtered_search.json');
    List allfilteredSearches = json.decode(each_filtered);
    List<FilteredSearch> filtered = allfilteredSearches
        .map((json) => FilteredSearch.fromJson(json))
        .toList();
    setState(() {
      filtered_searches = filtered;
    });
  }

  @override
  void initState() {
    loadFilteredSearches();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorB,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/wordmark.png'),
            ),
            SideSpace(
              10,
              0,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                InkWell(
                  child: IconOf(Icons.arrow_back_ios_new_rounded, 20, colorW),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
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
                          hintText: "filtered",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w200))),
                ),
                InkWell(
                  child: Image.asset("assets/images/filter.png",
                      width: 20, height: 20),
                ),
              ]),
            ),
            Expanded(
              child: SideSpace(
                10,
                4,
                Container(
                  child: SideSpace(
                    0,
                    0,
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: filtered_searches.length,
                      itemBuilder: (BuildContext context, int index) {
                        FilteredSearch searches = filtered_searches[index];
                        return Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(color: colorp3, width: 1)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 130,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  searches.display_pic))),
                                    ),
                                    SideSpace(
                                      10,
                                      5,
                                      Container(
                                        child: Column(children: [
                                          TextOf(searches.username, colorW, 24,
                                              FontWeight.w400),
                                          TextOf(searches.email, colorp3, 12.8,
                                              FontWeight.w300),
                                          TextOf(searches.km_away, colorW, 16,
                                              FontWeight.w300),
                                          Text(
                                            searches.about,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: colorp3,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 12.8),
                                          ),
                                          // TextOf(searches.about, colorp3, 12.8,
                                          //     FontWeight.w300),
                                          Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                    child: Container(
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    colorp3)),
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.20,
                                                        height: 40,
                                                        child: Center(
                                                          child: TextOf(
                                                              "Friends",
                                                              colorW,
                                                              15,
                                                              FontWeight.w600),
                                                        )),
                                                    onTap: () {}),
                                                XSpace(20),
                                                InkWell(
                                                    child: Container(
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color:
                                                                    colorp3)),
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.20,
                                                        height: 40,
                                                        child: Center(
                                                          child: TextOf(
                                                              "Message",
                                                              colorW,
                                                              15,
                                                              FontWeight.w600),
                                                        )),
                                                    onTap: () {}),
                                              ])
                                        ]),
                                      ),
                                    ),
                                  ],
                                )),
                            YSpace(10)
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//www.nta.gov.ng=========================================================================







