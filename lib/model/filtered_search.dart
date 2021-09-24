class FilteredSearch {
  String display_pic;
  String username;
  String email;
  String km_away;
  String about;

  FilteredSearch(
      this.display_pic, this.username, this.email, this.km_away, this.about);
  FilteredSearch.fromJson(Map<String, dynamic> json)
      : display_pic = json["display_pic"],
        username = json["username"],
        email = json["email"],
        km_away = json["km_away"],
        about = json["about"];
}
