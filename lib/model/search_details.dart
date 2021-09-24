class SearchIPL {
  String interest_people_location;
  String background_pic;

  SearchIPL(
    this.interest_people_location,
    this.background_pic,
  );

  SearchIPL.fromJson(Map<String, dynamic> json)
      : interest_people_location = json["Interests_people_location"],
        background_pic = json["background_pic"];
}
