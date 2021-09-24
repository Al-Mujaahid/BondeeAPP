import 'package:bondee/model/chats_list.dart';
import 'package:bondee/pages/nav_screens/chatting/view_friends_profile.dart';
import 'package:flutter/material.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';

import 'chat_screen.dart';

class IndividualChat extends StatefulWidget {
  IndividualChat({Key key}) : super(key: key);

  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {
  @override
  Widget build(BuildContext context) {
    ChatsLists chatslists;
    return Scaffold(
      backgroundColor: colorB,
      body: SafeArea(
        child: Stack(alignment: AlignmentDirectional.bottomEnd, children: [
          Column(children: [
            ReusableContainer(
                Container(
                  child: SideSpace(
                      15,
                      5,
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                    child: IconOf(Icons.arrow_back_ios_rounded,
                                        20, colorW),
                                    onTap: () {
                                      Navigator.pop(context);
                                    }),
                                XSpace(20),
                                Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/ellipse23.png"),
                                            fit: BoxFit.fill)),
                                    width: 38,
                                    height: 38),
                                XSpace(20),
                                TextOf("Tekena", colorW, 28, FontWeight.w600)
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 20,
                                  height: 20,
                                  child:
                                      Image.asset("assets/images/search.png"),
                                ),
                                PopupMenuButton(
                                  icon: ImageIcon(
                                    AssetImage("assets/images/more.png"),
                                    color: colorW,
                                    size: 20,
                                  ),
                                  color: colorp3,
                                  itemBuilder: (BuildContext context) => [
                                    PopupMenuItem(
                                        value: 1,
                                        child: TextOf("View profile", colorW,
                                            18, FontWeight.w400)),
                                    PopupMenuItem(
                                        value: 2,
                                        child: TextOf("Files", colorW, 18,
                                            FontWeight.w400)),
                                    PopupMenuItem(
                                        value: 3,
                                        child: TextOf("Notification", colorW,
                                            18, FontWeight.w400)),
                                    PopupMenuItem(
                                        value: 4,
                                        child: TextOf("Delete Chat", colorW, 18,
                                            FontWeight.w400)),
                                    PopupMenuItem(
                                        value: 5,
                                        child: TextOf("Block", colorW, 18,
                                            FontWeight.w400)),
                                  ],
                                  onSelected: (value) {
                                    if (value == 1) {
                                      NavigateTo.next(
                                          context, ViewFriendsProfileScreen());
                                    } else if (value == 2) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: TextOf("Files", colorB, 30,
                                                  FontWeight.w700),
                                              content: TextOf(
                                                  "files appear here",
                                                  colorB,
                                                  20,
                                                  FontWeight.w200),
                                            );
                                          });
                                    } else if (value == 3) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: TextOf("Notification",
                                                  colorB, 30, FontWeight.w700),
                                              content: TextOf(
                                                  "You'll receive notifications here",
                                                  colorB,
                                                  20,
                                                  FontWeight.w200),
                                            );
                                          });
                                    } else if (value == 4) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: TextOf("Delete chat",
                                                  colorB, 30, FontWeight.w700),
                                              content: TextOf(
                                                  "Currently not available",
                                                  colorB,
                                                  20,
                                                  FontWeight.w200),
                                            );
                                          });
                                    } else if (value == 5) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              title: TextOf("Block", colorB, 30,
                                                  FontWeight.w700),
                                              content: TextOf(
                                                  "You'll block contacts here later!",
                                                  colorB,
                                                  20,
                                                  FontWeight.w200),
                                            );
                                          });
                                    }
                                  },
                                ),
                              ],
                            )
                          ])),
                ),
                0,
                0,
                double.infinity,
                colorp3,
                colorp3),
            Expanded(
              child: SingleChildScrollView(
                child: SideSpace(
                  10,
                  10,
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text(
                                    "Moring broh!!\nTrust you had a great night\n Just want to remind you we're \n submitting the project tommorow afternoon. \n How do we go about it?",
                                    style: TextStyle(
                                        backgroundColor: colorY,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorY,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text(
                                    "Yeh... \n I've gone to meet an engineer in my \nhouse and he told me all we'll need for it",
                                    style: TextStyle(
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorp3,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text(
                                    "Thanks mah bro for your efort.\n But when he has said it Let me know tooo oooo!!",
                                    style: TextStyle(
                                        backgroundColor: colorY,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorY,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text("Sure... will defimitely put you in mind",
                                    style: TextStyle(
                                        backgroundColor: colorp3,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorp3,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text("Have a blissful day ahead brother",
                                    style: TextStyle(
                                        backgroundColor: colorY,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorY,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text("One more thing..",
                                    style: TextStyle(
                                        backgroundColor: colorY,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorY,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text("Okeyy....",
                                    style: TextStyle(
                                        backgroundColor: colorp3,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorp3,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              child: SideSpace(
                                10,
                                10,
                                Text("Whats it?..",
                                    style: TextStyle(
                                        backgroundColor: colorp3,
                                        color: colorW,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w200)),
                              ),
                              decoration: BoxDecoration(
                                color: colorp3,
                                borderRadius: BorderRadius.circular(5),
                              )),
                        ],
                      ),
                      YSpace(60),
                    ],
                  ),
                ),
              ),
            )
          ]),
          SideSpace(
            10,
            0,
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
              child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: IconOf(Icons.link, 25, colorB),
                      fillColor: colorW,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: colorW,
                              width: 1,
                              style: BorderStyle.solid)),
                      hintText: "Type a message",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 20,
                          fontWeight: FontWeight.w200))),
            ),
          ),
        ]),
      ),
    );
  }
}
