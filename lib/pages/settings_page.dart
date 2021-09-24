import 'package:bondee/pages/profile_screens.dart/user_profile_screen.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_range_slider/flutter_range_slider.dart' as frs;
import 'package:buttons_tabbar/buttons_tabbar.dart';

import 'nav_screens/all_navigation_index.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void _onMaleChanged(bool value) {
    setState(() {
      _male == value;
    });
  }

  void _onFemaleChanged(bool value) {
    setState(() {
      _female == value;
    });
  }

  void _onDataChanged(bool value) {
    setState(() {
      _valueData == value;
    });
  }

  double distance = 0;
  var ageRangeOf = RangeValues(start, end);

  static double end = 0;
  static double start = 0;
  bool _female = false;
  bool _male = false;
  bool _value = false;
  bool _valueData = false;
  //void _onChanged(){}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorB,
      body: SafeArea(
        child: Container(
            child: SideSpace(
          10,
          10,
          SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(
                  child: IconOf(Icons.arrow_back_ios_new_rounded, 20, colorW),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              TextOf('Settings', colorW, 20, FontWeight.w500),
              IconOf(Icons.arrow_back_ios_new_rounded, 20, colorB)
            ]),
            YSpace(10),
            ExpandableLists(
              null,
              double.infinity,
              "  Choose Mode",
              Container(width: double.infinity, height: 40),
              TextOf('Date', colorW, 14, FontWeight.w200),
            ),
            YSpace(10),
            ReusableContainer(
                SideSpace(
                  4,
                  8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextOf("  Data Mode", colorW, 20, FontWeight.w300),
                      Switch(
                          value: _valueData,
                          onChanged: _onDataChanged,
                          activeColor: colorp4,
                          inactiveThumbColor: colorp1),
                    ],
                  ),
                ),
                0,
                1,
                double.infinity,
                colorB,
                colorp4),
            YSpace(10),
            ExpandableLists(
              null,
              double.infinity,
              "  Notification settings",
              Container(width: double.infinity, height: 40),
              Icon(Icons.arrow_forward_ios_rounded, size: 20, color: colorW),
            ),
            YSpace(10),
            ExpandableLists(
              null,
              double.infinity,
              "  Status and privacy",
              Container(width: double.infinity, height: 40),
              Icon(Icons.arrow_forward_ios_rounded, size: 20, color: colorW),
            ),
            YSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                XSpace(10),
                TextOf("I'm interested in..", colorW, 18, FontWeight.w200),
              ],
            ),
            ReusableContainer(
                SideSpace(
                  4,
                  8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextOf("  Men", colorW, 20, FontWeight.w300),
                      Switch(
                          value: _male,
                          onChanged: _onMaleChanged,
                          activeColor: colorp4,
                          inactiveThumbColor: colorp1),
                    ],
                  ),
                ),
                0,
                1,
                double.infinity,
                colorB,
                colorp4),
            YSpace(10),
            ReusableContainer(
                SideSpace(
                  4,
                  8,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextOf("  Women", colorW, 20, FontWeight.w300),
                      Switch(
                          value: _female,
                          onChanged: _onFemaleChanged,
                          activeColor: colorp4,
                          inactiveThumbColor: colorp1),
                    ],
                  ),
                ),
                0,
                1,
                double.infinity,
                colorB,
                colorp4),
            YSpace(10),
            Row(children: [
              XSpace(10),
              TextOf("Distance", colorW, 18, FontWeight.w200),
            ]),
            YSpace(6),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: colorp4, width: 1),
              ),
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        XSpace(10),
                        TextOf("Up to ${(distance).round()} kilometers away",
                            colorW, 18, FontWeight.w200),
                      ],
                    ),
                    Slider(
                        value: distance,
                        min: 0,
                        max: 100,
                        onChanged: (ageRange) {
                          setState(() {
                            distance = ageRange;
                          });
                        }),
                    YSpace(6),
                  ]),
            ),
            Row(children: [
              XSpace(10),
              TextOf("Age", colorW, 18, FontWeight.w200),
            ]),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: colorp4, width: 1),
              ),
              height: MediaQuery.of(context).size.height * 0.12,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        XSpace(10),
                        TextOf(
                            "I'm within the age of ${(start).round()} and ${(end).round()}",
                            colorW,
                            18,
                            FontWeight.w200),
                      ],
                    ),
                    RangeSlider(
                        values: ageRangeOf,
                        min: 0,
                        max: 100,
                        onChangeStart: (startVal) {
                          setState(() {
                            start = startVal as double;
                          });
                        },
                        onChangeEnd: (endVal) {
                          setState(() {
                            end = endVal as double;
                          });
                        },
                        onChanged: (RangeValues ageRange) {
                          setState(() {
                            ageRangeOf = ageRange;
                          });
                        }),
                    YSpace(6),
                  ]),
            ),
            YSpace(6),
            YSpace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    child: ReusableContainer(
                        Center(
                          child: TextOf("Logout", colorW, 20, FontWeight.w600),
                        ),
                        0,
                        1,
                        MediaQuery.of(context).size.width * 0.35,
                        colorB,
                        colorp4),
                    onTap: () {}),
                InkWell(
                    child: ReusableContainer(
                        Center(
                            child:
                                TextOf("Delete", colorW, 20, FontWeight.w600)),
                        0,
                        1,
                        MediaQuery.of(context).size.width * 0.35,
                        colorB,
                        colorp4),
                    onTap: () {
                      NavigateTo.next(context, Navigation());
                    }),
              ],
            ),
          ])),
        )),
      ),
    );
  }
}
