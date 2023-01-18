import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zjedz/components/input_form.dart';
import 'package:zjedz/components/icons_button.dart';
import 'package:zjedz/constants.dart';
import 'package:zjedz/model/content_data.dart';
import 'bottomCityMenu.dart';
import 'bottomPersonMenu.dart';
import 'package:zjedz/model/content.dart';

class PickBar extends StatefulWidget {
  const PickBar({
    Key? key,
  }) : super(key: key);

  @override
  State<PickBar> createState() => _PickBarState();
}

class _PickBarState extends State<PickBar> {
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
                  text: isCitySelected
                      ? Provider.of<ContentData>(context).city
                      : geoCity,
                  icon: Icons.location_on_outlined,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      builder: (context) => BottomCityMenu(
                        items: cityList,
                        title: 'Your city:',
                        secondTitle: 'Another city:',
                      ),
                    );
                  },
                ),
                const VerticalDivider(
                  color: Color(0xFFFECC00),
                ),
                IconsButton(
                  text: Provider.of<ContentData>(context).date,
                  icon: Icons.calendar_month_outlined,
                  onTap: () async {
                    DateTime? selected = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(
                        const Duration(days: 60),
                      ),
                    );
                    if (selected != null) {
                      Provider.of<ContentData>(context, listen: false)
                          .updateDate(selected);
                    }
                  },
                ),
                const VerticalDivider(
                  color: Color(0xFFFECC00),
                ),
                IconsButton(
                  text: Provider.of<ContentData>(context).person,
                  icon: Icons.person,
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                      ),
                      builder: (context) => BottomPersonMenu(
                        items: personList,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
