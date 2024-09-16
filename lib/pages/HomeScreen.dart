// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/HomeScreenAPIMain.dart';
import 'package:flutter_application_1/AlertDialog/HomeScreen_Alert.dart';
import 'package:flutter_application_1/Bar/HomeScreen_Bar.dart';
import 'package:flutter_application_1/Buttons/HomeScreen_Buttons.dart';
import 'package:flutter_application_1/Card/HomeScreen_Card.dart';
import 'package:flutter_application_1/Chip/HomeScreen_Chip.dart';
import 'package:flutter_application_1/Container/HomeScreen_Container.dart';
import 'package:flutter_application_1/Divider/HomeScreen.dart';
import 'package:flutter_application_1/Drawer/HomeScreen.dart';
import 'package:flutter_application_1/Dropdown/HomeScreen_Dropdown.dart';
import 'package:flutter_application_1/Expanded/HomeScreen.dart';
import 'package:flutter_application_1/GridView/HomeScreen.dart';
import 'package:flutter_application_1/Icons/HomeScreen.dart';
import 'package:flutter_application_1/Image/HomeScreen_Image.dart';
import 'package:flutter_application_1/Padding/HomeScreen.dart';
import 'package:flutter_application_1/Slider/HomeScreen.dart';
import 'package:flutter_application_1/Switch/HomeScreen.dart';
import 'package:flutter_application_1/Tab/HomeScreen1.dart';
import 'package:flutter_application_1/TextField/HomeScreen.dart';
import 'package:flutter_application_1/TextFormField/HomeScreen.dart';
import 'package:flutter_application_1/Transform/HomeScreen.dart';
import 'package:flutter_application_1/other/HomeScreenOthers.dart';
import 'package:flutter_application_1/other/Theme/mainTheme.dart';

import 'package:flutter_application_1/Align/HomeScreen_Align.dart';

import 'package:flutter_application_1/Box/HomeScreen_Box.dart';

// import 'package:flutter_application_1/ListView/HomeScreen_ListView1.dart';

import 'package:flutter_application_1/Row/HomeScreen.dart';
// import 'package:flutter_application_1/SetUpAPK/HomeScreenSetUp.dart';

// import 'package:flutter_application_1/pages/HomeScreenV2.dart';
// import 'package:flutter_application_1/pages/HomeScreensV2/HomeButton.dart';

import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:flutter_application_1/widgets/exit-popup.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Flutter Tutorials"),
          actions: [
            PopupMenuButton(
                itemBuilder: (BuildContext varPrefer) => [
                      PopupMenuItem(
                          child: IconButton(
                              icon: const Icon(Icons.settings),
                              color: Colors.black,
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MainTheme(),
                                  )))),
                      PopupMenuItem(
                          child: IconButton(
                        icon: const Icon(Icons.exit_to_app),
                        color: Colors.black,
                        onPressed: () => showExitPopup(context),
                      )),
                    ])
          ],
        ),
        body: GridView.count(
          padding: EdgeInsets.all(6),
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 4.1,
          children: [
            // 1 Dialog Box
            ElevatedButton(
                child: const Text('Dialog Boxq',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlert(),
                    ))),

            // 2 Align
            ElevatedButton(
                child: const Text('Align',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeAlign(),
                    ))),

            // 3 Bar

            ElevatedButton(
                child: Text('Bar',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                //    onPressed: () {},
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBar(),
                    ))),

            // 4 Box
            ElevatedButton(
                child: const Text('Box',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeBox(),
                    ))),
            // 5 Dropdown
            ElevatedButton(
                child: Text('Dropdown',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeDropdown(),
                    ))),
            // 6 Buttons
            ElevatedButton(
                child: Text('Buttons',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeButton(
                        primaryColor: Colors.red,
                      ),
                    ))),
            // 7 Card
            ElevatedButton(
                child: const Text('Card',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeCard(),
                    ))),
            // 8 Chip
            ElevatedButton(
                child: Text('Chip',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeChip(),
                    ))),
            // 9 Container

            ElevatedButton(
                child: Text('Container',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeContainer(),
                    ))),

            // 10 Divider
            ElevatedButton(
              child: const Text('Divider',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDivider(),
                  )),
            ),
            // 11 Drawer

            ElevatedButton(
              child: const Text('Drawer',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDrawer(),
                  )),
            ),
            // 12 Expanded

            ElevatedButton(
              child: Text('Expanded',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeExpanded(),
                  )),
            ),

            // 13 Grid View
            ElevatedButton(
              child: Text('Grid View',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeGridView(),
                  )),
            ),
            // 14 Icons
            ElevatedButton(
              child: Text('Icons',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeIcons(),
                  )),
            ),
            // 15 Image
            ElevatedButton(
                child: Text('Image',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeImage(),
                    ))),

// 16 ListView

            ElevatedButton(
              child: Text('ListView',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              // onPressed: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => HomeListView1(),
              //     ))
              onPressed: () {},
            ),
// 17 Padding
            ElevatedButton(
              child: Text('Padding',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePadding(),
                  )),
            ),

// 18 Row
            ElevatedButton(
              child: Text('Row /\nColumn',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeRow(),
                  )),
            ),
// 19 Slider
            ElevatedButton(
              child: const Text('Slider',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSlider(),
                  )),
            ),
// 20 Switch

            ElevatedButton(
              child: const Text('Switch',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSwitch(),
                  )),
            ),

            // 21 Tab

            ElevatedButton(
              child: const Text('Tab',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              // onPressed: () {},
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTabBar1(),
                  )),
            ),
// 22 Text
            ElevatedButton(
              child: const Text('Text',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () {},
              // onPressed: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => HomeText(),
              //     )),
            ),
// 23 TextField
            ElevatedButton(
              child: const Text('TextField',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTextField(),
                  )),
            ),

// 24 TextFormField

            ElevatedButton(
              child: Text('TextFormField',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTextFormField(),
                  )),
              // onPressed: () {},
            ),

// 25 Transform
            ElevatedButton(
              child: Text('Transform',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeTransform(),
                  )),
            ),
// 26 API
            ElevatedButton(
              child: Text('API',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeMainAPI(),
                  )),
            ),
// 27 Others

            ElevatedButton(
              child: Text('Others',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeScreenOthers(),
                  )),
            ),

// 28 Setup/App Dev.
            ElevatedButton(
              child: Text('Setup/App Dev.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              // onPressed: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => HomeSetUp(),
              //     )),
              onPressed: () {},
            ),

            // 29 New Layout

            ElevatedButton(
              child: Text('New Layout',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              // onPressed: () => Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (BuildContext context) => HomeScreenV2(
              //         primaryColor: Colors.black,
              //       ),
              //     )),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
