import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/viewmodels/video_play_view_model.dart';
import 'package:video_player/video_player.dart';

//------------------------------------------------------------------------------
// 영상 재생 개별 타일
//------------------------------------------------------------------------------
class VideoPlayerWidget extends StatelessWidget {
  final int index;

  const VideoPlayerWidget({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<VideoPlayerControllerX>();

    return Obx(() {
      if (controller.videoControllers.isEmpty ||
          !controller.videoControllers[index].value.isInitialized) {
        return const Center(child: CircularProgressIndicator());
      }

      return GestureDetector(
        onTap: () => controller.togglePlayPause(index),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: AspectRatio(
            aspectRatio: controller.videoControllers[index].value.aspectRatio,
            child: VideoPlayer(controller.videoControllers[index]),
          ),
        ),
      );
    });
  }
}
