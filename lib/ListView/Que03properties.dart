import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
// import 'package:random_pk/random_pk.dart';

double sliderVal = 30;
bool boolVal = false;

class Que03 extends StatefulWidget {
  @override
  _Que03State createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.builder'),
      ),
      body: Column(
        children: [
          myWidget(),
        ],
      ),
      bottomNavigationBar: _getBottomBar(),
    );
  }

  Widget _getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Theme.of(context).primaryColorLight,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CustSlider(
                  widthVal: 250,
                  maxValue: 50,
                  minValue: 10,
                  divide: 10,
                  propText: '   itemExtent:',
                  sliderVal: sliderVal,
                  onValueChange: (onChange) {
                    setState(() {
                      sliderVal = onChange;
                    });
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('   reverse:'),
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: true,
                          groupValue: boolVal,
                          onChanged: (bool? value) {
                            setState(() => boolVal = value!);
                          }),
                      const Text('true'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Radio<bool>(
                          value: false,
                          groupValue: boolVal,
                          onChanged: (bool? value) {
                            setState(() => boolVal = value!);
                          }),
                      const Text('false'),
                    ],
                  ),
                ],
              ),
            ]),
      ),
    );
  }
}

Widget myWidget() {
  return
      //Random
      Container(
    height: 350,
    child: ListView.builder(
      padding: EdgeInsets.all(8.0),
      // spacing of the rows
      itemExtent: sliderVal,
      reverse: boolVal,
      // provides an infinite list
      // itemCount: 10, // to get infinite list
      itemBuilder: (BuildContext context, int index) {
        return Text('Row $index');
      },
    ),
  );
}

  // Widget _getBottomBar() {
  //   return Material(
  //     color: Theme.of(context).primaryColorLight,
  //     child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           Text('itemExtent:'),
  //           SizedBox(
  //               width: 200,
  //               child: Slider(
  //                 value: sliderVal,
  //                 min: 10,
  //                 max: 50,
  //                 onChanged: (val) {
  //                   setState(() {
  //                     sliderVal = val;
  //                   });
  //                 },
  //               )),
  //         ],
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           Text('reverse:'),
  //           Row(
  //             children: <Widget>[
  //               Radio<bool>(
  //                   value: true,
  //                   groupValue: boolVal,
  //                   onChanged: (bool value) {
  //                     setState(() => boolVal = value);
  //                   }),
  //               const Text('true'),
  //             ],
  //           ),
  //           Row(
  //             children: <Widget>[
  //               Radio<bool>(
  //                   value: false,
  //                   groupValue: boolVal,
  //                   onChanged: (bool value) {
  //                     setState(() => boolVal = value);
  //                   }),
  //               const Text('false'),
  //             ],
  //           ),
  //         ],
  //       ),
  //     ]),
  //   );
  // }

