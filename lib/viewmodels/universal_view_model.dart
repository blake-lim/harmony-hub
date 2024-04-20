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

  /* 노래 목록을 관리하는 RxList */
  final RxList<Map<String, String>> songList = <Map<String, String>>[
    {
      'title': 'Stairway to Heaven',
      'artist': 'Led Zeppelin',
      'genre': 'Rock',
      'image': 'assets/images/singer1.jpg'
    },
    {
      'title': 'Bohemian Rhapsody',
      'artist': 'Queen',
      'genre': 'Rock',
      'image': 'assets/images/singer2.jpg'
    },
    {
      'title': 'Hotel California',
      'artist': 'Eagles',
      'genre': 'Rock',
      'image': 'assets/images/singer3.jpg'
    },
    {
      'title': 'Sweet Child O\' Mine',
      'artist': 'Guns N\' Roses',
      'genre': 'Rock',
      'image': 'assets/images/singer4.jpg'
    },
    {
      'title': 'Smoke on the Water',
      'artist': 'Deep Purple',
      'genre': 'Rock',
      'image': 'assets/images/singer5.jpg'
    },
    {
      'title': 'Born to Run',
      'artist': 'Bruce Springsteen',
      'genre': 'Rock',
      'image': 'assets/images/singer6.jpg'
    },
    {
      'title': 'Back In Black',
      'artist': 'AC/DC',
      'genre': 'Rock',
      'image': 'assets/images/singer7.jpg'
    },
    {
      'title': 'Dream On',
      'artist': 'Aerosmith',
      'genre': 'Rock',
      'image': 'assets/images/singer8.jpg'
    },
    {
      'title': 'Another Brick in the Wall, Part 2',
      'artist': 'Pink Floyd',
      'genre': 'Rock',
      'image': 'assets/images/singer9.jpg'
    },
    {
      'title': 'You Shook Me All Night Long',
      'artist': 'AC/DC',
      'genre': 'Rock',
      'image': 'assets/images/singer10.jpg'
    }
  ].obs;

  List<Map<String, String>> getSongsByGenre(String genre) {
    return songList.where((song) => song['genre'] == genre).toList();
  }

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
