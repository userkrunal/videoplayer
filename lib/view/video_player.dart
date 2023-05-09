import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:videoplayer/provider/video_provider.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {

  VideoProvider? vpT;
  VideoProvider? vpF;

  @override
  void initState() {
    super.initState();
    Provider.of<VideoProvider>(context,listen: false).loadvideo();
  }

  @override
  Widget build(BuildContext context) {

    vpF=Provider.of<VideoProvider>(context,listen: false);
    vpT=Provider.of<VideoProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Container(
            height: 40.h,
            width: 100.w,
            child: Chewie(
              controller: vpT!.chewieController!,
            ),
          )
        ],
      ),
    ));
  }
}
