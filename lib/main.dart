import 'package:flutter/material.dart';
import 'package:zjedz/model/content_data.dart';
import 'screens/loading_screen.dart';
import 'screens/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ZjedzApp());
}

class ZjedzApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => ContentData(),
      child: MaterialApp(
        initialRoute: LoadingScreen.id,
        routes: {
          LoadingScreen.id: (context) => LoadingScreen(),
          MainScreen.id: (context) => MainScreen(),
        },
      ),
    );
  }
}
