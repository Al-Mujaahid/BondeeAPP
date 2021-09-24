import 'package:flutter/material.dart';

class PeopleesLists {
  String profile_pic;
  String full_name;
  String bio;

  PeopleesLists(this.profile_pic, this.full_name, String bio);

  PeopleesLists.fromJson(Map<String, dynamic> json)
      : profile_pic = json["profile_pic"],
        full_name = json["full_name"],
        bio = json["bio"];
}
