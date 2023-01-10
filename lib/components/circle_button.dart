import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  IconData icon;
  VoidCallback onTap;

  CircleButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.all(
          Radius.circular(100.0),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(1),
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        child: Icon(
          icon,
          color: Colors.black54,
        ),
      ),
    );
  }
}
