// lib/ListView\Que09ListViewLimitHeight.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0911 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que09.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Limit Height - Demo")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 200,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    height: 98,
                    color: Colors.purple[600],
                    child: const Center(
                        child: Text(
                      'Item 1',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    height: 98,
                    color: Colors.purple[500],
                    child: const Center(
                        child: Text(
                      'Item 2',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    height: 98,
                    color: Colors.purple[400],
                    child: const Center(
                        child: Text(
                      'Item 3',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  Container(
                    height: 98,
                    color: Colors.purple[300],
                    child: const Center(
                        child: Text(
                      'Item 4',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que09.png'),
              ),
            ),
            Center(child: Text("ListView/Que09ListViewLimitHeight.dart"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
