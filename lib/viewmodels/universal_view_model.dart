import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/services/resource_manager.dart';

//------------------------------------------------------------------------------
// 공통적으로 사용하는 뷰모델
//------------------------------------------------------------------------------
class UniversalViewModel extends GetxController {
  var selectedInstrument = Rxn<String>();

  void selectInstrument(String instrumentName) {
    if (selectedInstrument.value == instrumentName) {
      selectedInstrument.value = null;
    } else {
      selectedInstrument.value = instrumentName;
    }
  }

  List<Map<String, String>> getSongsByGenre(String genre) {
    return ResourceManager.songList
        .where((song) => song['genre'] == genre)
        .toList();
  }
}
