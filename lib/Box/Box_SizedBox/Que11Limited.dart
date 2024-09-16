// lib/Box/Box_SizedBox/Que11Limited.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
// import 'package:random_pk/random_pk.dart';

class Que11 extends StatelessWidget {
  final String url1 =
      "https://www.woolha.com/tutorials/flutter-using-sizedbox-widget-examples";

  final String video1 = "aVZ5rsA4Yx8"; //Flutter
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: WidgetAppBar("SizedBox / LimitedBox\nSizedOverFlowBox")),
        body: SingleChildScrollView(
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              //            Spacer(flex: 1),
              Text(
                "SizedBox (height, width)",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: 
                   // Random
                    Container(
                      height: 100,
                      width: 100,
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: FlutterLogo(size: 60),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                   // Random
                    Container(
                      height: 30,
                      width: 30,
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: FlutterLogo(size: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                    //Random
                    Container(
                      child: SizedBox(
                        height: 80,
                        width: 80,
                        child: FlutterLogo(size: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                   // Random
                    Container(
                      child: SizedBox(
                        height: 50,
                        width: 50,
                        child: FlutterLogo(size: 80),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("Container:100, \nBox:80, Logo:60",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:30, \nBox:80, Logo:50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:null, \nBox:80, child:50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:null, \nBox:50, child:80",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
//              Spacer(flex: 1),
              Divider(
                  thickness: 5,
                  color: Colors.green,
                  height: 5,
                  indent: 20,
                  endIndent: 20),
              //            Spacer(flex: 1),
              Text(
                "Limited Box (maxHeight, minHeight, maxWidth, minWidth)",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: 
                   // Random
                    Container(
                      height: 100,
                      width: 100,
                      child: LimitedBox(
                        maxHeight: 80,
                        maxWidth: 80,
                        child: FlutterLogo(size: 60),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                   // Random
                    Container(
                      height: 30,
                      width: 30,
                      child: LimitedBox(
                        maxHeight: 80,
                        maxWidth: 80,
                        child: FlutterLogo(size: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                    //Random
                    Container(
                      child: LimitedBox(
                        maxHeight: 80,
                        maxWidth: 80,
                        child: FlutterLogo(size: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                   // Random
                    Container(
                      child: LimitedBox(
                        maxHeight: 50,
                        maxWidth: 50,
                        child: FlutterLogo(size: 80),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("Container:100, \nBox:80, Logo:60",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:30, \nBox:80, Logo:50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:null, \nBox:80, child:50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:null, \nBox:50, child:80",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
//              Spacer(flex: 1),
              //SizedOverFlowBox
              Divider(
                  thickness: 5,
                  color: Colors.green,
                  height: 5,
                  indent: 20,
                  endIndent: 20),
              //            Spacer(flex: 1),
              Text(
                "SizedOverflowBox (size: Size())",
                style: TextStyle(fontSize: 13),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: 
                   // Random
                    Container(
                      height: 100,
                      width: 100,
                      child: SizedOverflowBox(
                        size: Size(80.0, 80.0),
                        child: FlutterLogo(size: 60),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                   // Random
                    Container(
                      height: 30,
                      width: 30,
                      child: SizedOverflowBox(
                        size: Size(80.0, 80.0),
                        child: FlutterLogo(size: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                    //Random
                    Container(
                      child: SizedOverflowBox(
                        size: Size(80.0, 80.0),
                        child: FlutterLogo(size: 50),
                      ),
                    ),
                  ),
                  Center(
                    child: 
                    //Random
                    Container(
                      child: SizedOverflowBox(
                        size: Size(50.0, 50.0),
                        child: FlutterLogo(size: 80),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Text("Container:100, \nBox:80, Logo:60",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:30, \nBox:80, Logo:50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:null, \nBox:80, child:50",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                  Center(
                    child: Text("Container:null, \nBox:50, child:80",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
