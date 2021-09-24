import 'package:bondee/pages/nav_screens/chatting/individual_chat.dart';
import 'package:bondee/pages/profile_screens.dart/complete_profile_screen.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/material.dart';
// import 'package:bondee/utils/styles/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ViewFriendsProfileScreen extends StatelessWidget {
  const ViewFriendsProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorB,
      body: Container(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset('assets/images/rectangleftwo.png'),
            ),
            SideSpace(
              15,
              0,
              SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    YSpace(20),
                    InkWell(
                      onTap: () {
                        NavigateTo.next(context, IndividualChat());
                      },
                      child: Image.asset('assets/images/wordmark.png'),
                    ),
                    YSpace(20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: IconOf(
                              Icons.arrow_back_ios_new_rounded, 20, colorW),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/ellipse22.png'),
                                    fit: BoxFit.fill)),
                            width: 120,
                            height: 120),
                        InkWell(
                          child: IconOf(
                              Icons.arrow_forward_ios_rounded, 20, colorW),
                        )
                      ],
                    ),
                    TextOf('Tekena Senibo', colorW, 24, FontWeight.w400),
                    TextOf('Musician, Art Lover, Model', colorW, 14,
                        FontWeight.w400),
                    TextOf('Lagos, Nigeria', colorW, 14, FontWeight.w400),
                    TextOf('tekssey@gmail.com', colorp4, 20, FontWeight.w400),
                    YSpace(30),
                    Container(
                      decoration: BoxDecoration(
                          color: colorp3,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: colorp3)),
                      child: SideSpace(
                        10,
                        10,
                        Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextOf('About Me', colorW, 14, FontWeight.w400),
                              Icon(
                                Icons.edit,
                                color: colorW,
                                size: 13,
                              )
                            ],
                          ),
                          YSpace(25),
                          TextOf(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Egestas commodo turpis et risus, tellus, tortor. Sapien lectus non a eu, molestie quis mattis..',
                              colorW,
                              14,
                              FontWeight.w300)
                        ]),
                      ),
                    ),
                    YSpace(7),
                    Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                          color: colorp3,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: colorp3)),
                    ),
                    YSpace(7),
                    Container(
                      decoration: BoxDecoration(
                          color: colorp3,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: colorp3)),
                      child: SideSpace(
                        10,
                        10,
                        Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextOf('ACCOUNT INFORMATION', colorW, 14,
                                  FontWeight.w400),
                              TextOf('See more', colorW, 12, FontWeight.w200),
                            ],
                          ),
                          YSpace(25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextOf(
                                  'Phone number', colorW, 12, FontWeight.w200),
                              TextOf('+234 809 000 0000', colorW, 12,
                                  FontWeight.w200)
                            ],
                          ),
                          Divider(
                            color: colorB,
                          ),
                          YSpace(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextOf('Email', colorW, 12, FontWeight.w200),
                              TextOf('Kate125@gmail.com', colorW, 12,
                                  FontWeight.w200)
                            ],
                          ),
                          Divider(
                            color: colorB,
                          ),
                          YSpace(10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextOf('Address', colorW, 12, FontWeight.w200),
                              TextOf('12 rock view road', colorW, 12,
                                  FontWeight.w200)
                            ],
                          ),
                        ]),
                      ),
                    ),
                    YSpace(50)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
