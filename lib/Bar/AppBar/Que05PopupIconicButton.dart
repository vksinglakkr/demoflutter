// lib/Bar\AppBar\Que05PopupIconicButton.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class Que05Popup11 extends StatefulWidget {
  @override
  _Que05Popup11State createState() => _Que05Popup11State();
}

class _Que05Popup11State extends State<Que05Popup11> {
  final String image1 = "assets/help/Box/Box_RotatedBox/Que01.png";
  final String video1 = "IYDVcriKjsw";
  launchURL() {
    // ignore: deprecated_member_use
    launch(
        'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("3 Dot Popup Menu(iconicButton)"),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext bc) => [
//              PopupMenuItem(child: Text("New Chat"), value: "/newchat"),
                PopupMenuItem(
                  child: IconButton(
                    icon: const Icon(Icons.info),
                    color: Colors.black,
                    onPressed: launchURL,
                  ),
                ),
//              PopupMenuItem(child: PopupMenuDivider(height: 1)),
                PopupMenuItem(
                  child: IconButton(
                      icon: const Icon(Icons.image),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyAppImage(image1: '',)),
                        );
                      }),
                ),
                PopupMenuItem(
                    child: IconButton(
                        icon: const Icon(Icons.play_arrow),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyAppVideo(video1: '',)),
                          );
                        })),
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
                      child: Text(
                        '''actions: [ 
          PopupMenuItem(
          child: IconButton(
          icon: const Icon(Icons.info),
          color: Colors.black,
          onPressed: launchURL))])''',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
