import 'package:flutter/material.dart';
import 'package:zjedz/components/input_form.dart';
import 'package:zjedz/components/icons_button.dart';

class PickBar extends StatelessWidget {
  const PickBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFECC00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputForm(
            border: false,
            children: Row(
              children: [
                IconsButton(
                  text: 'Warszawa',
                  icon: Icons.location_on_outlined,
                  onTap: () {},
                ),
                const VerticalDivider(
                  color: Color(0xFFFECC00),
                ),
                IconsButton(
                  text: '08.01 14:40',
                  icon: Icons.calendar_month_outlined,
                  onTap: () {},
                ),
                const VerticalDivider(
                  color: Color(0xFFFECC00),
                ),
                IconsButton(
                  text: '2 os.',
                  icon: Icons.person,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
