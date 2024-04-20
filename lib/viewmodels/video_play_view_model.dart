import 'package:get/get.dart';
import 'package:harmony_hub/services/resource_manager.dart';
import 'package:video_player/video_player.dart';

//------------------------------------------------------------------------------
// 연주 비디오 플레이어 뷰모델
//------------------------------------------------------------------------------
class VideoPlayerControllerX extends GetxController {
  List<VideoPlayerController> videoControllers = [];

  @override
  void onInit() {
    super.onInit();
    for (var videoPath in ResourceManager.videos) {
      VideoPlayerController controller = VideoPlayerController.asset(videoPath)
        ..initialize().then((_) => update());
      videoControllers.add(controller);
    }
  }

  void togglePlayPause(int index) {
    var controller = videoControllers[index];
    if (controller.value.isPlaying) {
      controller.pause();
    } else {
      controller.play();
    }
    update();
  }

  @override
  void onClose() {
    for (var controller in videoControllers) {
      controller.dispose();
    }
    super.onClose();
  }
}
