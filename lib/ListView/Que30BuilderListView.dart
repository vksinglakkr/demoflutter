// lib/ListView\Que30BuilderListView.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que3011 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que3011> {
  List names = [
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  List msgCount = [2, 0, 10, 6, 52, 4, 0, 2];

  final String image1 = "assets/help/ListView/Que30.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("ListView Builder - 2 List")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(children: <Widget>[
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 50,
                      margin: EdgeInsets.all(2),
                      color: Colors.blue,
                      child: Center(
                          child: Text(
                        '${names[index]} (${msgCount[index]})',
                        style: TextStyle(fontSize: 18),
                      )),
                    );
                  })),
          Center(child: Text("ListView/Que30BuilderListView.dart")),
        ]),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
