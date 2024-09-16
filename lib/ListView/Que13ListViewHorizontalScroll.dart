// lib/ListView\Que13ListViewHorizontalScroll.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que1311 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que13.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Scroll Horizontally")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 20.0,
              ),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Card(
                    color: Colors.red,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Item 1',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.purple[500],
                    child: const Center(
                        child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Item 2',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ))),
                  ),
                  Card(
                    color: Colors.yellowAccent,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Item 3',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.black,
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Item 4',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )),
                  ),
                  Card(
                    color: Colors.blueAccent,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Item 5',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.amber,
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Item 6',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Image(
                image: AssetImage('assets/images/ListView/Que13.png'),
              ),
            ),
            Center(child: Text("ListView/Que13ListViewHorizontalScroll.dart"))
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
