import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/viewmodels/video_play_view_model.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatelessWidget {
  final int index; // 비디오 인덱스

  const VideoPlayerWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<VideoPlayerControllerX>();
    return Obx(() {
      VideoPlayerController videoController =
          controller.videoControllers[index];
      return GestureDetector(
        onTap: () => controller.togglePlayPause(index),
        child: videoController.value.isInitialized
            ? AspectRatio(
                aspectRatio: videoController.value.aspectRatio,
                child: VideoPlayer(videoController),
              )
            : const Center(child: CircularProgressIndicator()),
      );
    });
  }
}
