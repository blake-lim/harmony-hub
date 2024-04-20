import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

//------------------------------------------------------------------------------
// 공통적으로 사용하는 뷰모델
//------------------------------------------------------------------------------
class UniversalViewModel extends GetxController {
  /* 장르 리스트 */
  final RxList<Map<String, String>> firstLineGenres = <Map<String, String>>[
    {'name': 'Rock', 'image': 'assets/images/rock.jpg'},
    {'name': 'Hip-Hop', 'image': 'assets/images/hiphop.jpg'},
    {'name': 'Pop', 'image': 'assets/images/pop.jpg'},
    {'name': 'Electronic', 'image': 'assets/images/electronic.jpg'},
  ].obs;

  /* 장르 리스트 */
  final RxList<Map<String, String>> secondLineGenres = <Map<String, String>>[
    {'name': 'Folk', 'image': 'assets/images/folk.jpg'},
    {'name': 'Blues', 'image': 'assets/images/blues.jpg'},
    {'name': 'Jazz', 'image': 'assets/images/jazz.jpg'},
    {'name': 'Classical', 'image': 'assets/images/classical.jpg'},
  ].obs;

/* 이미지 로드 메서드 */
  void loadImages() {
    for (var genre in firstLineGenres) {
      precacheImage(AssetImage(genre['image']!), Get.context!);
    }
    for (var genre in secondLineGenres) {
      precacheImage(AssetImage(genre['image']!), Get.context!);
    }
  }
}
