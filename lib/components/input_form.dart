import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  Widget children;
  bool border = false;

  InputForm({
    required this.children,
    required this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        border: border
            ? Border.all(
                color: Colors.black54,
                width: 1.0,
              )
            : null,
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: children,
    );
  }
}
