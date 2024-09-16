// lib/Text\Que17TextAutoSizetext.dart
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que17AutoSizeText extends StatelessWidget {
  final String image1 = "assets/help/Text/Que17.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView(
            children: [
              Card(
                elevation: 5,
                color: Colors.deepPurple[300],
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Best Video by Johannes Milke:\nResponsive UI Text Layout-Auto Size Text\nhttps://www.youtube.com/watch?v=0O_qDZ48F7o',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // YoutubePlayer(
              //   controller: YoutubePlayerController(
              //     initialVideoId: 'zn2GwbPG-tc', //Add videoID.
              //     flags: YoutubePlayerFlags(
              //       hideControls: false,
              //       controlsVisibleAtStart: true,
              //       autoPlay: false,
              //       mute: false,
              //     ),
              //   ),
              //   showVideoProgressIndicator: true,
              // ),
              SizedBox(height: 10),
              Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                      AutoSizeText(    
                        "Hello ",
                        style: TextStyle(fontSize: 50.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "Hello My Dear Friend ",
                        style: TextStyle(fontSize: 50.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "Hello My Dear Friend, How ",
                        style: TextStyle(fontSize: 50.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "Hello Hello My Dear Friend, How are",
                        style: TextStyle(fontSize: 50.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "Hello Hello My Dear Friend, How are you ",
                        style: TextStyle(fontSize: 50.0),
                        maxLines: 1,
                      ),
                      AutoSizeText(
                        "Hello Hello My Dear Friend, How are you today?",
                        style: TextStyle(fontSize: 50.0),
                        maxLines: 2,
                        minFontSize: 25.0,
                      ),
                    ],
                  ))
            ],
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
