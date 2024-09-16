// lib/Others/Providers/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Providers/Project1/main.dart';
import 'package:flutter_application_1/other/Providers/Que01.dart';

import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Provider")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  QueProvider(),
                  "lib/Others/Providers/Project1/main.dart",
                  "Provider Ex.1",
                  "assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(Que01MyApp(), "lib/Others/Providers/Que01.dart",
                  "Provider Ex.2", "assets/help/Que01.jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
