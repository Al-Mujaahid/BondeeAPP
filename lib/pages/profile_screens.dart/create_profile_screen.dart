import 'package:bondee/pages/profile_screens.dart/user_profile_screen.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CreateProfile extends StatefulWidget {
  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  int _gender = 3;
  int _maritalS = 4;

  var _relationship;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: colorB,
        body: SafeArea(
          child: Container(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Complete Profile",
                    style: GoogleFonts.poppins(
                        color: colorW,
                        fontWeight: FontWeight.w400,
                        fontSize: 18)),
                Padding(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(Icons.arrow_back_ios_rounded,
                                size: 25, color: colorp4),
                          ),
                          InkWell(
                              onTap: () {
                                NavigateTo.next(context, UserProfileScreen());
                              },
                              child:
                                  TextOf('Next', colorp4, 18, FontWeight.w400))
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: colorp4,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8.0)),
                        width: double.infinity,
                        height: 128,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8, 10, 8, 10),
                          child: Row(
                            children: [
                              Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/girllpic.png'),
                                          fit: BoxFit.fill)),
                                  width: 90,
                                  height: 90),
                              SizedBox(width: 10),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextOf(
                                        'Kante', colorW, 18, FontWeight.w400),
                                    Text("kate125@gmail.com",
                                        style: GoogleFonts.poppins(
                                            color: colorp4,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14)),
                                  ]),
                            ],
                          ),
                        ),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Gender",
                        SideSpace(
                          10,
                          10,
                          Container(
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextOf(
                                          "Male", colorW, 18, FontWeight.w400),
                                      Radio(
                                          value: 1,
                                          groupValue: _gender,
                                          onChanged: (chosen) {
                                            setState(() {
                                              _gender = chosen;
                                            });
                                          }),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      TextOf("Female", colorW, 18,
                                          FontWeight.w400),
                                      Radio(
                                          value: 2,
                                          groupValue: _gender,
                                          onChanged: (selected) {
                                            setState(() {
                                              _gender = selected;
                                            });
                                          }),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Bio",
                        SideSpace(
                          10,
                          10,
                          Container(
                              width: double.infinity,
                              decoration: BoxDecoration(color: Colors.grey),
                              child: TextFormField(
                                maxLines: 10,
                                decoration: InputDecoration(
                                  fillColor: colorW,
                                  focusColor: colorW,
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none),
                                  hintText: "Tell us about yourself",
                                  hintStyle: GoogleFonts.poppins(
                                      color: Colors.grey.shade700),
                                ),
                              )),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Height",
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Relationship status",
                        Container(
                          child: SideSpace(
                            10,
                            10,
                            Container(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextOf("Single", colorW, 18,
                                            FontWeight.w400),
                                        Radio(
                                            value: 3,
                                            groupValue: _maritalS,
                                            onChanged: (chosen) {
                                              setState(() {
                                                _maritalS = chosen;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextOf("In a relationship", colorW, 18,
                                            FontWeight.w400),
                                        Radio(
                                            value: 4,
                                            groupValue: _maritalS,
                                            onChanged: (selected) {
                                              setState(() {
                                                _maritalS = selected;
                                              });
                                            }),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextOf("Married", colorW, 18,
                                            FontWeight.w400),
                                        Radio(
                                            value: 5,
                                            groupValue: _maritalS,
                                            onChanged: (selected) {
                                              setState(() {
                                                _maritalS = selected;
                                              });
                                            }),
                                      ],
                                    ),
                                  ],
                                )),
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Looking for",
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Profession",
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Hobbies",
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Book List",
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                      ExpandableLists(
                        null,
                        double.infinity,
                        "    Star sign",
                        Container(
                          width: double.infinity,
                          height: 60,
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,
                            size: 20, color: colorW),
                      ),
                      YSpace(10),
                    ]),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
