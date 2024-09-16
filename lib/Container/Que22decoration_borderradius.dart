// lib/Container\Que22decoration_borderradius.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que2211 extends StatelessWidget {
  final String url1 = "https://flutter.dev/";
  final String image1 = "assets/help/Container/Que22.png";
  final String video1 = "JDDoN2THwug";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("borderRadius ")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(5),
                  //borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  //borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0),bottomRight: Radius.circular(25.0),bottomLeft: Radius.circular(25.0)),
                  //borderRadius: BorderRadius.horizontal(left:Radius.circular(25.0),right:Radius.circular(25.0))
                  //borderRadius: BorderRadius.vertical(top:Radius.circular(25.0),bottom:Radius.circular(25.0))
                ),
                child: Text('NIC Kurukshetra'),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

//Note1: What is the use of decoration. Ans border,shadow,shape, borderRadius
//Note2: Can we define color outside decoration, if we used decoration. Ans No.
//Note3: Is it compulsory to set border to setup borderRadius. Ans No
