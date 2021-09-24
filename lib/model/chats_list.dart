import 'package:flutter/material.dart';

class ChatsLists {
  String friends_profile_pic;
  String username;
  String last_message;

  ChatsLists(this.friends_profile_pic, this.username, String last_message);

  ChatsLists.fromJson(Map<String, dynamic> json)
      : friends_profile_pic = json["friends_profile_pic"],
        username = json["username"],
        last_message = json["last_message"];
}
