import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Step1Basic extends StatelessWidget {
  //final for Que01 4 Steps clearly expalined
  launchURL() {
    // ignore: deprecated_member_use
    launch('https://reqres.in/');
  }

  launchURL1() {
    // ignore: deprecated_member_use
    launch('http://makeup-api.herokuapp.com/');
  }

  launchURL2() {
    // ignore: deprecated_member_use
    launch(
        'https://www.copterlabs.com/json-what-it-is-how-it-works-how-to-use-it/');
  }

  launchURL3() {
    // ignore: deprecated_member_use
    launch(
        'https://thegrowingdeveloper.org/coding-blog/flutter-api-integration-learn-to-fetch-data-from-internet');
  }

  launchURL4() {
    // ignore: deprecated_member_use
    launch('https://www.youtube.com/watch?v=I1dtnFftmHo');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("Json?, How to fetch data?"),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image(
              image: AssetImage("assets/help/API/JsonStructure.jpg"),
            ),
            ElevatedButton(
              onPressed: launchURL2,
              child: Text("JSON: What It Is, How It Works, & How to Use It"),
            ),
            ElevatedButton(
              onPressed: launchURL,
              child: Text("A hosted REST-API ready to use"),
            ),
            ElevatedButton(
              onPressed: launchURL1,
              child: Text("Makeup API"),
            ),
            ElevatedButton(
              onPressed: launchURL3,
              child: Text("How to fetch data-1"),
            ),
            ElevatedButton(
              onPressed: launchURL4,
              child: Text(
                  "Difference between sync and async functions. Why we need async in API."),
            ),
          ],
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
