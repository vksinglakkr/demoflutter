// lib/YouTubePlayer.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class QueYouTube extends StatefulWidget {
  @override
  _QueYouTubeState createState() => _QueYouTubeState();
}

class _QueYouTubeState extends State<QueYouTube> {
  final String image1 = "assets/help/YouTube.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text => SelectableText")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: 'dFKhWe2bBkM',
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
