import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'content_container.dart';
import 'package:zjedz/model/content_data.dart';

class ContentList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ContentData>(
      builder: (context, contentData, child) {
        return ListView.builder(
          itemCount: contentData.contentCount,
          itemBuilder: (context, index) {
            final content = contentData.contents[index];
            return ContentContainer(
              image: content.image,
              title: content.title,
              rating: content.rating,
              ratingPeople: content.ratingPeople,
              distanceTo: content.distanceTo,
            );
          },
        );
      },
    );
  }
}
