// lib/ListView\Que01ListViewBasic.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0111 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Question 01")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Image.asset("assets/images/Que01ListView.jpg"),
            SizedBox(height: 50.0),
            Text(
                "Que.: Will the code work or not? if we change ListView to Column, then?",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                )),
            SizedBox(height: 50.0),
            Text("ListView/Que01ListView.dart"),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
