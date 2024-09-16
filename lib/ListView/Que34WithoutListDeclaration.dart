// lib/ListView\Que34WithoutListDeclaration.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que3411 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que34.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("ListView.builder without List declaration")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              height: 300,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return FlutterLogo(size: 120.0);
                },
              ),
            ),
            SizedBox(height: 15),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que34.png'),
              ),
            ),
            Center(child: Text("ListView/Que34WithoutListDeclaration.dart"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
