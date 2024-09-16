// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
// hema comment
// import 'package:flutter_application_1/CustomWidgets/HomeScreen.dart';
// import 'package:flutter_application_1/Diagram/MnemonicCode.dart';
import 'package:flutter_application_1/other/Center/HomeScreen.dart';
import 'package:flutter_application_1/other/CircleAvatar/HomeScreen.dart';
import 'package:flutter_application_1/other/FlutterLogo/HomeScreen.dart';
import 'package:flutter_application_1/other/Future/HomeScreen.dart';
import 'package:flutter_application_1/other/MapList/HomeScreen.dart';
// hema comment
// import 'package:flutter_application_1/other/PersistKey/HomeScreen.dart';
import 'package:flutter_application_1/other/Positioned/HomeScreen.dart';
// hema comment
// import 'package:flutter_application_1/other/Properties/HomeScreen.dart';
// import 'package:flutter_application_1/other/Providers/HomeScreen.dart';
// import 'package:flutter_application_1/other/Providers/HomeScreen.dart';
import 'package:flutter_application_1/other/Refactoring/HomeScreen.dart';
import 'package:flutter_application_1/other/Routes/HomeScreen.dart';
import 'package:flutter_application_1/other/Stack_IndexStack_Positioned/HomeScreen.dart';
import 'package:flutter_application_1/other/Toast/HomeScreen.dart';
import 'package:flutter_application_1/other/WidgetCommunication/HomeScreen.dart';
import 'package:flutter_application_1/other/Wrap/HomeScreen.dart';
import 'package:flutter_application_1/other/testdartFile/Que01.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

import 'Assignments/HomeScreen_Assignments.dart';
import 'General/HomeScreen.dart';
import 'GesterDetector/HomeScreen.dart';
import 'InkWell/HomeScreen.dart';
// hema comment
// import 'Material/HomeScreen.dart';
import 'Opacity/HomeScreen.dart';
import 'Placeholder/HomeScreen.dart';
// hema comment
// import 'ProgressIndicator_Loading/HomeScreen.dart';
import 'QueURL_Launcher.dart';
import 'Spacer/HomeScreen.dart';
import 'Theme/HomeScreen.dart';
// import 'Video_Player.dart';
import 'Visibility/HomeScreen.dart';
import 'YouTubePlayer.dart';

class HomeScreenOthers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Others")),
        body: GridView.count(
          padding: EdgeInsets.all(5),
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 3.0,
          children: [
            ElevatedButton(
              child: Text('CircleAvatar',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeCircleAvatar(),
                  )),
            ),
            ElevatedButton(
              child: Text('Center',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeCenter(),
                  )),
            ),
            ElevatedButton(
              child: Text('General',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGeneral(),
                  )),
            ),

            // hema comment
            // ElevatedButton(
            //   child: Text('Custom Widgets',
            //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //   onPressed: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (BuildContext context) => HomeCustomWidget(),
            //       )),
            // ),

            ElevatedButton(
              child: Text('Widgets Communication',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        HomeWidgetCommunication(),
                  )),
            ),
            ElevatedButton(
              child: Text('GesterDetector',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGesterDetector(),
                  )),
            ),
            ElevatedButton(
              child: Text('InkWell',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeInkWell(),
                  )),
            ),

            // hema comment
            // ElevatedButton(
            //   child: Text('Material',
            //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //   onPressed: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (BuildContext context) => HomeMaterial(),
            //       )),
            // ),
            ElevatedButton(
              child: Text('Opacity',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeOpacity(),
                  )),
            ),
            ElevatedButton(
              child: Text('Placeholder',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePlaceholder(),
                  )),
            ),

            // ElevatedButton(
            //   child: Text('Loader..',
            //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //   onPressed: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (BuildContext context) => HomeProgress(),
            //       )),
            // ),

            ElevatedButton(
              child: Text('Future',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeFuture(),
                  )),
            ),
            ElevatedButton(
              child: Text('Spacer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSpacer(),
                  )),
            ),
            ElevatedButton(
              child: Text('Visibility',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeVisibility(),
                  )),
            ),

            // hema comment
            // ElevatedButton(
            //   child: Text('Video Player',
            //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //   onPressed: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (BuildContext context) => VideoPlayerApp(),
            //       )),
            // ),

            ElevatedButton(
              child: Text('url Launcher',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MyAppURL(),
                  )),
            ),
            ElevatedButton(
              child: Text('YouTube Player',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => QueYouTube(),
                  )),
            ),
            ElevatedButton(
              child: Text('Testdart',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => QueTestPage(),
                  )),
            ),
            ElevatedButton(
              child: Text('Stack',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeStack(),
                  )),
            ),
            ElevatedButton(
              child: Text('Positioned',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePositioned(),
                  )),
            ),
            // hema comment
            // ElevatedButton(
            //     child: Text('Properties',
            //         style:
            //             TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //     onPressed: () => Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (BuildContext context) => HomeProperties(),
            //         ))),
            ElevatedButton(
                child: Text('Wrap',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeWrap(),
                    ))),
            ElevatedButton(
                child: Text('FlutterLogo',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeLogo(),
                    ))),
            ElevatedButton(
                child: Text('Routes',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeRoutes(),
                    ))),
            ElevatedButton(
                child: Text('Toast',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeToast(),
                    ))),
            ElevatedButton(
                child: Text('Assignments',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAssignments(),
                    ))),
            ElevatedButton(
                child: Text('Theme',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeTheme(),
                    ))),
// hema comment
            // ElevatedButton(
            //     child: Text('PersistKey',
            //         style:
            //             TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //     onPressed: () => Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (BuildContext context) => HomePersist(),
            //         ))),

            // ElevatedButton(
            //     child: Text('Provider (State Management)',
            //         style:
            //             TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //     onPressed: () => Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (BuildContext context) => HomeProvider(),
            //         ))),

            // hema comment
            ElevatedButton(
                child: Text('Refactoring',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeRefactoring(),
                    ))),

            // hema comment
            // ElevatedButton(
            //     child: Text('Anatomy/MnemonicCode',
            //         style:
            //             TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            //     onPressed: () => Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //           builder: (BuildContext context) => HomeMnemonic(),
            //         ))),
            ElevatedButton(
                child: Text('.Map() ..toList()',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeMapList(),
                    ))),
          ],
        ),
      ),
    );
  }
}
