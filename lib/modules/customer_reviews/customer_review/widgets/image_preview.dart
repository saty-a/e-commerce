import 'dart:io';

import 'package:ecommerce_app/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ImagePreview extends StatelessWidget {
  final String? imagePath;

  const ImagePreview({Key? key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: imagePath!.contains("mp4")
            ? VideoPlayer2(
                videoPath: File(imagePath!),
              )
            : Image.file(
                File(imagePath!),
                fit: BoxFit.fill,
              ),
      ),
    );
  }
}

/// Stateful widget to fetch and then display video content.
class VideoPlayer2 extends StatefulWidget {
  final File videoPath;

  const VideoPlayer2({super.key, required this.videoPath});

  @override
  _VideoPlayer2State createState() => _VideoPlayer2State();
}

class _VideoPlayer2State extends State<VideoPlayer2> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.file(widget.videoPath)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? VideoPlayer(_controller)
            : Container(),
        GestureDetector(
          onTap: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Center(
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_circle,
              color: AppColors.white,
              size: 60,
            ),
          ),
        ),
      ],
    );
    /*floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),*/
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
