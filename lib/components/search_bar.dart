import 'package:flutter/material.dart';
import 'package:zjedz/components/input_form.dart';
import 'package:zjedz/components/icons_button.dart';
import 'package:zjedz/components/circle_button.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputForm(
          border: true,
          children: IconsButton(
            text: 'Szukaj restauracji lub posilku',
            icon: Icons.search,
            onTap: () {},
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        CircleButton(
          icon: Icons.filter_alt_outlined,
          onTap: () {},
        ),
        SizedBox(
          width: 10.0,
        ),
        CircleButton(
          icon: Icons.map_outlined,
          onTap: () {},
        ),
      ],
    );
  }
}
