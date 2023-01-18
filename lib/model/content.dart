class Content {
  String image;
  String title;
  String rating;
  String ratingPeople;
  String distanceTo;

  Content(
      {required this.image,
      required this.title,
      required this.rating,
      required this.ratingPeople,
      required this.distanceTo});
}

late String geoCity;
bool isCitySelected = false;
bool isCityFounded = false;
