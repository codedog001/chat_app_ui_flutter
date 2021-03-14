// //Link: https://www.youtube.com/watch?v=XSn5EwWBG-4

// import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// import 'dart:io';

// import 'package:video_player/video_player.dart';
// import 'package:chewie/chewie.dart';

// class VideoPlayer extends StatefulWidget {
//   final File videoFile;
//   VideoPlayer(this.videoFile)
//   @override
//   _VideoPlayerState createState() => _VideoPlayerState();
// }

// class _VideoPlayerState extends State<VideoPlayer> {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Video Player'),
//       ),
//       body: Center(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 SizedBox(
//                   height: 50,
//                 ),

//                 //Video
//                 Container(
//                   color: Colors.brown,
//                   height: MediaQuery.of(context).size.height * (40 / 100),
//                   width: MediaQuery.of(context).size.height * (100 / 100),
//                   child: widget.videoFile == null
//                       ? Center(
//                           child: Icon(
//                             Icons.videocam,
//                             color: Colors.red,
//                             size: 50,
//                           ),
//                         )
//                       : Expanded(
//                           child: mounted
//                               ? Chewie(
//                                   controller: ChewieController(
//                                     videoPlayerController:
//                                         VideoPlayerController.file(videoFile),
//                                     aspectRatio: 16 / 9,
//                                     autoPlay: true,
//                                     allowPlaybackSpeedChanging: true,
//                                     looping: true,
                                    
//                                   ),
//                                 )
//                               : Container(),
//                         ),
//                 ),

                
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
