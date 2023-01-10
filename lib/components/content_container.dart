import 'package:flutter/material.dart';
import 'package:zjedz/constants.dart';

class ContentContainer extends StatelessWidget {
  String image;
  String title;
  String rating;
  String ratingPeople;
  String distanceTo;

  ContentContainer(
      {required this.image,
      required this.title,
      required this.rating,
      required this.ratingPeople,
      required this.distanceTo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      width: double.infinity,
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: kContentTitleStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$rating ⭐ ($ratingPeople)',
                style: kContentTextStyle,
              ),
              Text(
                distanceTo,
                style: kContentTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
