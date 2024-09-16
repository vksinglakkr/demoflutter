import 'package:flutter/material.dart';

class Que01 extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> {
  int _counter = 0;
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.yellow,
                child: Transform.translate(
                  offset: Offset(sliderVal1, sliderVal2),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.blue.withAlpha(125),
                  ),
                ),
              ),
            ),
            Text("No. of Times Clicked: $_counter"),
          ],
        ),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(children: [
          Text("offset: Offset(x,y)"),
          SizedBox(
              width: 120,
              child: Slider(
                value: sliderVal1,
                min: 0.0,
                max: 220.0,
                divisions: 10,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 120,
              child: Slider(
                value: sliderVal2,
                min: 0.0,
                max: 220.0,
                divisions: 10,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
                  });
                },
              )),
        ]),
      ]),
    );
  }
}
