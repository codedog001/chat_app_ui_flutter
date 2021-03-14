import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'dart:io';
import 'package:video_player/video_player.dart';
import '../screens/chat_screen.dart';

class PlayVideo extends StatefulWidget {
  final File videoFile;
  PlayVideo(this.videoFile);

  @override
  _PlayVideoState createState() => _PlayVideoState();
}

class _PlayVideoState extends State<PlayVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ok'),
      // ),

      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30),
            height: MediaQuery.of(context).size.height * (50 / 100),
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.topRight,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2)),
            child: mounted
                ? Chewie(
                    controller: ChewieController(
                      videoPlayerController:
                          VideoPlayerController.file(widget.videoFile),
                      autoPlay: true,
                      allowPlaybackSpeedChanging: true,
                      looping: false,
                    ),
                  )
                : Container(),
          ),
          SizedBox(
            height: 15,
          ),
          Card(
            // color: Colors.blueAccent,
            elevation: 4,
            child: Text(
              'Send this video?',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {}, //Confirm Video Submission
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Card(
                    child: Text(
                      'YES',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {}, //Deny Video Submission
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: Card(
                    child: Text(
                      'NO',
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
