import 'package:flutter/material.dart';
import 'package:zjedz/components/content_list.dart';
import 'package:provider/provider.dart';
import 'package:zjedz/model/content_data.dart';
import 'package:zjedz/components/pick_bar.dart';
import 'package:zjedz/components/search_bar.dart';

class MainScreen extends StatefulWidget {
  static const String id = 'main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFECC00),
      body: SafeArea(
        child: Column(
          children: [
            PickBar(),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.0,
                    ),
                    SearchBar(),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      color: Colors.black54,
                      width: 1000.0,
                      height: 300.0,
                      child: Text(''),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Znalezione restauracje',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Color(0xFFFECC00),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            '${Provider.of<ContentData>(context).contentCount}',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ContentList(),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
