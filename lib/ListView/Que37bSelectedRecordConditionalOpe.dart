// lib/ListView\Que37bSelectedRecordConditionalOpe.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que37b11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que37b11> {
  List<String> names = [
    'Bharti',
    'Rajiv',
    'Aashish',
    'Athar Ali',
    'Hema',
    'Mohit',
    'Arun',
    'Ram'
  ];
  final List<int> msgCount = [2, 0, 10, 6, 52, 4, 0, 2, 67];

  final String image1 = "assets/help/ListView/Que37b.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Conditional Operator if..else ")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(children: <Widget>[
          Container(
              height: 250,
              child: ListView.builder(
                  padding: const EdgeInsets.all(5),
                  itemCount: names.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: msgCount[index] >= 5 ? 38 : 0,
                      margin: EdgeInsets.all(2),
                      color: msgCount[index] >= 10
                          ? Colors.blue[400]
                          : msgCount[index] > 3
                              ? Colors.blue[100]
                              : Colors.grey,
//                    color: index % 2 == 0 ? Colors.yellow : Colors.red,
                      child: Center(
                          child: Text(
                        '${names[index]} (${msgCount[index]})',
                        style: TextStyle(fontSize: 16),
                      )),
                    );
                  })),
          Center(child: Text("Show Selected Records only")),
          SizedBox(height: 5),
          Center(
            child: Image(
              image: AssetImage('assets/images/ListView/Que37.png'),
            ),
          ),
          Center(child: Text("ListView/Que37ListViewConditionOpe.dart"))
        ]),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
