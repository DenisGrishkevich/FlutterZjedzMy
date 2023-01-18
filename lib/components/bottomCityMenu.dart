import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zjedz/model/content_data.dart';
import 'package:zjedz/model/content.dart';

class BottomCityMenu extends StatefulWidget {
  late List<String> items;
  late String title;
  late String secondTitle;

  BottomCityMenu(
      {super.key,
      required this.items,
      required this.title,
      required this.secondTitle});

  @override
  State<BottomCityMenu> createState() => _BottomCityMenuState();
}

class _BottomCityMenuState extends State<BottomCityMenu> {
  List<Widget> createButtons(context) {
    List<Widget> itemButtons = [];

    for (String item in widget.items) {
      itemButtons.add(
        TextButton(
          onPressed: () {
            Provider.of<ContentData>(context, listen: false).updateCity(item);
            isCitySelected = true;
            Navigator.pop(context);
          },
          child: Text(
            item,
            style: const TextStyle(
              color: Colors.black54,
              fontSize: 20.0,
            ),
          ),
        ),
      );
    }

    return itemButtons;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          IconButton(
              icon: const Icon(
                Icons.location_city,
                color: Colors.black54,
              ),
              onPressed: () {}),
          Text(
            widget.title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              isCityFounded ? geoCity : 'Unknown city',
              style: const TextStyle(
                color: Colors.black54,
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            widget.secondTitle,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 25.0,
            ),
          ),
          Column(
            children: createButtons(context),
          )
        ],
      ),
    );
  }
}
