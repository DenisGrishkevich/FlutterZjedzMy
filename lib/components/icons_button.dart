import 'package:flutter/material.dart';

class IconsButton extends StatelessWidget {
  String text;
  IconData icon;
  VoidCallback onTap;

  IconsButton({required this.text, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black54,
        ),
        SizedBox(
          width: 5.0,
        ),
        TextButton(
          onPressed: onTap,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
