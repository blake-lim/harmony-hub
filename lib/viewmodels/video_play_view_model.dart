import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

//------------------------------------------------------------------------------
// 연주 비디오 플레이어 뷰모델
//------------------------------------------------------------------------------
class VideoPlayerControllerX extends GetxController {
  late VideoPlayerController controller;
  final String videoAssetPath;

  VideoPlayerControllerX(this.videoAssetPath);

  @override
  void onInit() {
    super.onInit();
    controller = VideoPlayerController.asset(videoAssetPath)
      ..initialize().then((_) {
        update();
      });
  }

  void togglePlayPause() {
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    update();
  }

  @override
  void onClose() {
    controller.dispose();
    super.onClose();
  }
}
