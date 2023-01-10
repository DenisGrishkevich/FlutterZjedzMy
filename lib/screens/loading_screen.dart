import 'package:flutter/material.dart';
import 'main_screen.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = 'loading_screen';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  // Put your logo here
  IconData _icon = Icons.abc;
  double _size = 1000.0;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(50.0);
  Color _color = Color(0xFFFFFFFF);

  @override
  void initState() {
    // TODO: implement initState
    ChangeContainer();
  }

  void ChangeContainer() async {
    await Future.delayed(Duration(seconds: 1));

    setState(() {
      _color = Color(0xFFFECC00);
      _borderRadius = BorderRadius.circular(100.0);
      _size = 200.0;
    });

    await Future.delayed(Duration(seconds: 2));

    setState(() {
      _color = Color(0xFFFFFFFF);
      _icon = Icons.icecream_outlined;
    });

    await Future.delayed(Duration(seconds: 2));
    Navigator.pushNamed(context, MainScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          width: _size,
          height: _size,
          decoration: BoxDecoration(
            color: Color(0xFFFECC00),
            borderRadius: _borderRadius,
          ),
          duration: Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: Center(
              child: Icon(
            _icon,
            size: 70,
            color: _color,
          )),
        ),
      ),
    );
  }
}
