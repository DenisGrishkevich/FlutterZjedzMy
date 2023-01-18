import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zjedz/model/content_data.dart';

class BottomPersonMenu extends StatefulWidget {
  late List<String> items;

  BottomPersonMenu({super.key, required this.items});

  @override
  State<BottomPersonMenu> createState() => _BottomPersonMenuState();
}

class _BottomPersonMenuState extends State<BottomPersonMenu> {
  List<Widget> createButtons(context) {
    List<Widget> itemButtons = [];

    for (String item in widget.items) {
      itemButtons.add(
        TextButton(
          onPressed: () {
            Provider.of<ContentData>(context, listen: false).updatePerson(item);
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
                Icons.person,
                color: Colors.black54,
              ),
              onPressed: () {}),
          Text(
            'Person',
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
