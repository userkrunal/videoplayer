import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoProvider extends ChangeNotifier
{
  VideoPlayerController? videoPlayerController;
  ChewieController? chewieController;

  void loadvideo()
  {
    videoPlayerController=VideoPlayerController.asset("assets/video/dil.mp4");
    videoPlayerController!.initialize();

    chewieController=ChewieController(videoPlayerController: videoPlayerController!,
      autoPlay: true,
      // looping: true,
      // zoomAndPan: true,
      // showControls: true,
      // showOptions: true,
    );
  }
}