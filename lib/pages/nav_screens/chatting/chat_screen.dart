import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:bondee/utils/styles/bondee_colors.dart';
import 'package:bondee/widgets/bondee_widgets.dart';
import 'package:flutter/services.dart';
import 'package:bondee/model/chats_list.dart';
import 'package:bondee/pages/nav_screens/chatting/individual_chat.dart';

class ChattingPage extends StatefulWidget {
  ChattingPage({Key key}) : super(key: key);

  @override
  _ChattingPageState createState() => _ChattingPageState();
}

class _ChattingPageState extends State<ChattingPage> {
  var my_chats = [];
  Future loadChatsList() async {
    String bondee_chats =
        await rootBundle.loadString('assets/data/bondee_chats.json');
    List allChats = json.decode(bondee_chats);
    List<ChatsLists> _chats =
        allChats.map((json) => ChatsLists.fromJson(json)).toList();
    setState(() {
      my_chats = _chats;
    });
  }

  @override
  void initState() {
    loadChatsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    IndividualChat();
    return Scaffold(
      backgroundColor: colorB,
      body: SafeArea(
        child: Column(children: [
          //-----------------top
          SideSpace(
            10,
            10,
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              InkWell(
                child: IconOf(Icons.arrow_back_ios_rounded, 20, colorW),
                onTap: () {},
              ),
              TextOf("Friends", colorW, 28, FontWeight.w600),
              Image.asset("assets/images/search.png", width: 25, height: 25),
            ]),
          ),
          //-----------------friendsr
          ReusableContainer(
            SideSpace(
              4,
              4,
              ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: my_chats.length,
                itemBuilder: (BuildContext context, int index) {
                  ChatsLists chatslists = my_chats[index];
                  return Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(chatslists.friends_profile_pic),
                              fit: BoxFit.fill)),
                      width: 63,
                      height: 63);
                },
              ),
            ),
            0,
            0,
            double.infinity,
            colorp3,
            colorp3,
          ),
          YSpace(15),

          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            XSpace(20),
            TextOf("Chats", colorW, 28, FontWeight.w600),
          ]),
          YSpace(10),

          Expanded(
            child: Container(
              child: SideSpace(
                0,
                0,
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: my_chats.length,
                  itemBuilder: (BuildContext context, int index) {
                    ChatsLists chatslists = my_chats[index];
                    return InkWell(
                      onTap: () {
                        NavigateTo.next(context, IndividualChat());
                      },
                      child: ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        chatslists.friends_profile_pic),
                                    fit: BoxFit.fill)),
                            width: 65,
                            height: 65),
                        title: TextOf(
                            chatslists.username, colorW, 18, FontWeight.w600),
                        subtitle: TextOf(chatslists.last_message, colorW, 14,
                            FontWeight.w200),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
