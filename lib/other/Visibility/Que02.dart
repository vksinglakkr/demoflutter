// libVisibilityQue01CustomContainer_Visibility.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0211 extends StatefulWidget {
  @override
  _Que0211State createState() => _Que0211State();
}

class _Que0211State extends State<Que0211> {
  var _visible1 = true;
  var _visible2 = true;

  final String image1 = "assets/help/Visibility/Que01.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Visibility Demo")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                CustomContainer(txtData: 'Red', colorName: Colors.red),
                SizedBox(
                  height: 8.0,
                ),
                Visibility(
                    visible: _visible1,
                    child: CustomContainer(
                        txtData: 'Orange', colorName: Colors.orange)),
                SizedBox(
                  height: 8.0,
                ),
                Visibility(
                    visible: _visible2,
                    maintainAnimation: true,
                    maintainState: true,
                    maintainSize: true,
                    child: CustomContainer(
                        txtData: 'Blue', colorName: Colors.blue)),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: Text('Show/Hide Orange'),
                      onPressed: () => setState(() => _visible1 = !_visible1),
                    ),
                    ElevatedButton(
                        child: Text('Show/Hide Bluen(Maintainsize)'),
                        //onPressed: () => setState(()=>_visible2=!_visible2),
                        onPressed: () {
                          setState(() {
                            _visible2 = !_visible2;
                          });
                        }),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Image(
                    image: AssetImage('assets/Visibility/Que01.png'),
                  ),
                ),
                Text("Visibility/Que01CustomContainer_Visibility.dart")
              ],
            )),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.txtData,
    required this.colorName,
  });
  final String txtData;
  final Color colorName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 400,
      color: colorName,
      child: Center(
        child: Text(
          txtData,
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
