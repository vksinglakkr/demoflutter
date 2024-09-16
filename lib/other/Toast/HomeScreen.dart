// lib/Placeholder\HomeScreen.dartlib\Placeholder\HomeScreen.dart
import 'package:flutter/material.dart';
// hema comment
// import 'package:flutter_application_1/TextField/Assignment3.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeToast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Positioned")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              Text("data")
              // hema comment
              // ButtonsCode(
              //     Que03Assignment(),
              //     "lib/TextField/Assignment3.dart",
              //     "Show value-TextField/Controller/toast",
              //     "assets/help/Others/Wrap/Toast.jpg",
              //     "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
