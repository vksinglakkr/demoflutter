// lib/ListView\Que15ListGenerate.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que1511 extends StatelessWidget {
  final String image1 = "assets/help/ListView/Que15.png";

  final items = List<String>.generate(100, (index) => "Item $index");
  //final must be written here
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Generate List")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: items.length,
            itemBuilder: (context, index) {
              // return Column(children: [Text(items[index])]
              return ListTile(title: Text(items[index])
                  //return ListTile(title: Text('$items[index]')
                  //return Text(items[index]);
                  );
            }),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
