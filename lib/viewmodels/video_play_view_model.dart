import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

//------------------------------------------------------------------------------
// 비디오 플레이어 뷰모델
//------------------------------------------------------------------------------
class VideoPlayerControllerX extends GetxController {
  RxList<VideoPlayerController> videoControllers =
      RxList<VideoPlayerController>();
  final List<String> videoAssetPaths;

  VideoPlayerControllerX(this.videoAssetPaths);

  @override
  void onInit() {
    super.onInit();
    _initializeVideos();
  }

  void _initializeVideos() {
    for (var path in videoAssetPaths) {
      VideoPlayerController controller = VideoPlayerController.asset(path);
      controller.initialize().then((_) {
        controller.play();
        update();
      });
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
