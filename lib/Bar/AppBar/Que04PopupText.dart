// lib/Bar\AppBar\Que04PopupText.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que04Popup11 extends StatefulWidget {
  @override
  _Que04Popup11State createState() => _Que04Popup11State();
}

class _Que04Popup11State extends State<Que04Popup11> {
  final String image1 = "assets/help/";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("3 Dot Popup Menu(Text)"),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext bc) => [
                PopupMenuItem(child: Text("New Chat"), value: "/newchat"),
                PopupMenuItem(
                    child: Text("New Group Chat"), value: "/new-group-chat"),
                PopupMenuItem(child: Text("Settings"), value: "/settings"),
              ],
              onSelected: (route) {
                print(route);
                // Note You must create respective pages for navigation
                         // hema use .to string (route)
                Navigator.pushNamed(context, route.toString());
              },
            ),
          ],
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: Colors.amber,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(28.0),
                      child: Wrap(
                        children: [
                          Text(
                            '''actions: [ 
     PopupMenuButton(
     itemBuilder: (BuildContext bc) => [
     PopupMenuItem(child: Text("New Chat"), value: "/newchat"),],
     onSelected: (route) {
     Navigator.pushNamed(context, route);})])''',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
