import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';


class VideoPlayerWidget extends StatefulWidget {
  VideoPlayerWidget({Key? key, required this.videoAsset, required this.thumbnailAsset, required this.firstFrame}) : super(key: key);
  final String videoAsset;
  final String thumbnailAsset;
  final String firstFrame;

  @override
  State createState() => _VideoPlayerState();
}
class _VideoPlayerState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoAsset)
    ..initialize().then((_) {
    _controller.play();
    _controller.setLooping(true);
    setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return _controller.value.isInitialized
    ? AspectRatio(
    aspectRatio: _controller.value.aspectRatio,
    child: VideoPlayer(_controller),
    )
    /* renderizza il prmo frame del video prima che il controller venga inizializzato per garantire maggiore fluidità */
        : Image.asset(widget.firstFrame);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}