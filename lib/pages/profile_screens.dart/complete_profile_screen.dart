import 'package:bondee/pages/profile_screens.dart/user_profile_screen.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../settings_page.dart';

class CompleteProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorB,
      body: SafeArea(
        child: Container(
          child: SideSpace(
            10,
            0,
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                          child:
                              IconOf(Icons.arrow_back_ios_rounded, 20, colorW),
                          onTap: () {
                            Navigator.pop(context);
                          }),
                      TextOf("Profile", colorW, 20, FontWeight.w500),
                      IconOf(Icons.arrow_forward_ios_rounded, 20, colorB),
                    ],
                  ),
                  YSpace(15),
                  CircularPercentIndicator(
                    radius: 120.0,
                    lineWidth: 13.0,
                    animation: true,
                    percent: 0.7,
                    center: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/girllpic.png'),
                                fit: BoxFit.fill)),
                        width: 90,
                        height: 90),
                    circularStrokeCap: CircularStrokeCap.round,
                    progressColor: colorp4,
                  ),
                  YSpace(10),
                  TextOf("Kate Danies", colorW, 24, FontWeight.w500),
                  YSpace(3),
                  TextOf("Complete Your Profile", colorW, 20, FontWeight.w400),
                  YSpace(3),
                  TextOf(
                      "${0.7 * 100}% Complete", colorp4, 20, FontWeight.w400),
                  YSpace(10),
                  EACHoNEoFPRoFIlEWIDGET(
                      'assets/images/vector5.png', "About Me", 1.0, null),
                  YSpace(15),
                  EACHoNEoFPRoFIlEWIDGET(
                      'assets/images/vector4.png', "Images", 1.0, null),
                  YSpace(15),
                  EACHoNEoFPRoFIlEWIDGET(
                      'assets/images/vector6.png', "Contact Info", 1.0, null),
                  YSpace(15),
                  EACHoNEoFPRoFIlEWIDGET(
                      'assets/images/vector7.png', "Interests", 0.4, null),
                  YSpace(15),
                  EACHoNEoFPRoFIlEWIDGET(
                      'assets/images/vector8.png', "Location", 1.0, null),
                  YSpace(30),
                  InkWell(
                    onTap: () {
                      NavigateTo.next(context, SettingsPage());
                    },
                    child: ReusableContainer(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            TextOf("Next", colorp4, 20, FontWeight.w600),
                            IconOf(Icons.arrow_forward_ios, 20, colorp4)
                          ],
                        ),
                        0,
                        1,
                        MediaQuery.of(context).size.width * 0.35,
                        colorB,
                        colorp4),
                  ),
                  YSpace(10)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
