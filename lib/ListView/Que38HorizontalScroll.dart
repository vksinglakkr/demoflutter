// lib/ListView\Que38HorizontalScroll.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que3811 extends StatelessWidget {
  final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("List<int> varDeclaration = [ , , , ]")),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.red,
                      child: Text(
                        numbers[index].toString(),
                        style: TextStyle(color: Colors.white, fontSize: 36.0),
                      ),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: MediaQuery.of(context).size.height * 0.35,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: numbers.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Card(
                        color: Colors.blue,
                        child: Container(
                          child: Center(
                              child: Text(
                            numbers[index].toString(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 36.0),
                          )),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
