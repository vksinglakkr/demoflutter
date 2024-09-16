// lib/ListView\Que39NavigatorListTile.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:flutter_application_1/pages/HomePending.dart';

class Que3911 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que39.png";

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
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text('the List Item #$index'),
                  subtitle: Text('The SubTitle'),
                  leading: Icon(Icons.thumb_up),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePending()));
                  },
                );
              },
            ),
            SizedBox(height: 5),
            Center(child: Text("ListView/Que39NavigatorListTile.dart"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
