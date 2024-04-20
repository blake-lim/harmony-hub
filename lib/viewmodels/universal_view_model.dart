import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/services/resource_manager.dart';
import 'package:harmony_hub/views/play_instruments/play_screen.dart';
import 'package:video_player/video_player.dart';

//------------------------------------------------------------------------------
// 공통적으로 사용하는 뷰모델
//------------------------------------------------------------------------------
class UniversalViewModel extends GetxController {
  var selectedInstrument = Rxn<String>();
  var isButtonEnabled = false.obs;

/* 악기 선택 메서드 */
  void selectInstrument(String instrumentName) {
    if (selectedInstrument.value == instrumentName) {
      selectedInstrument.value = null;
      isButtonEnabled.value = false;
    } else {
      selectedInstrument.value = instrumentName;
      isButtonEnabled.value = true;
    }
  }

  List<Map<String, String>> getSongsByGenre(String genre) {
    return ResourceManager.songList
        .where((song) => song['genre'] == genre)
        .toList();
  }

  void navigateToPlayScreen() {
    if (isButtonEnabled.isTrue && selectedInstrument.value != null) {
      Get.to(() => const PlayScreen());
    }
  }
}
