import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/services/resource_manager.dart';

//------------------------------------------------------------------------------
// 공통적으로 사용하는 뷰모델
//------------------------------------------------------------------------------
class UniversalViewModel extends GetxController {
  List<Map<String, String>> getSongsByGenre(String genre) {
    return ResourceManager.songList
        .where((song) => song['genre'] == genre)
        .toList();
  }
}
