import 'package:flutter/widgets.dart';

//------------------------------------------------------------------------------
// 리소스 관리 매니져
//------------------------------------------------------------------------------
class ResourceManager {
  /* 모든 이미지 경로가 포함되어 있어 리소스 중복되어 리팩토링 필요~  */
  static final Map<String, String> images = {
    'rock': 'assets/images/rock.jpg',
    'hiphop': 'assets/images/hiphop.jpg',
    'pop': 'assets/images/pop.jpg',
    'electronic': 'assets/images/electronic.jpg',
    'folk': 'assets/images/folk.jpg',
    'blues': 'assets/images/blues.jpg',
    'jazz': 'assets/images/jazz.jpg',
    'classical': 'assets/images/classical.jpg',
    'singer1': 'assets/images/singer1.jpg',
    'singer2': 'assets/images/singer2.jpg',
    'singer3': 'assets/images/singer3.jpg',
    'singer4': 'assets/images/singer4.jpg',
    'singer5': 'assets/images/singer5.jpg',
    'singer6': 'assets/images/singer6.jpg',
    'singer7': 'assets/images/singer7.jpg',
    'singer8': 'assets/images/singer8.jpg',
    'singer9': 'assets/images/singer9.jpg',
    'singer10': 'assets/images/singer10.jpg',
    'drum': 'assets/images/drum.jpg',
    'guitar': 'assets/images/guitar.jpg',
    'piano': 'assets/images/piano.jpg',
    'vocal': 'assets/images/vocal.jpg',
  };
  static final List<Map<String, String>> firstLineGenres = [
    {'name': 'Rock', 'image': 'assets/images/rock.jpg'},
    {'name': 'Hip-Hop', 'image': 'assets/images/hiphop.jpg'},
    {'name': 'Pop', 'image': 'assets/images/pop.jpg'},
    {'name': 'Electronic', 'image': 'assets/images/electronic.jpg'},
  ];

  static final List<Map<String, String>> secondLineGenres = [
    {'name': 'Folk', 'image': 'assets/images/folk.jpg'},
    {'name': 'Blues', 'image': 'assets/images/blues.jpg'},
    {'name': 'Jazz', 'image': 'assets/images/jazz.jpg'},
    {'name': 'Classical', 'image': 'assets/images/classical.jpg'},
  ];

  static final List<Map<String, String>> instruments = [
    {'name': 'Drum', 'image': 'assets/images/drum.jpg'},
    {'name': 'Guitar', 'image': 'assets/images/guitar.jpg'},
    {'name': 'Piano', 'image': 'assets/images/piano.jpg'},
    {'name': 'Vocal', 'image': 'assets/images/vocal.jpg'}
  ];
  static final List<String> videos = [
    'assets/videos/drum.mp4',
    'assets/videos/guitar.mp4',
    'assets/videos/piano.mp4',
    'assets/videos/vocal.mp4',
  ];

  static final List<Map<String, String>> songList = [
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
    },
  ];

  /* 이미지 미리 로드 메서드 */
  static void preloadImages(BuildContext context) {
    images.forEach((key, value) {
      precacheImage(AssetImage(value), context);
    });
  }
}
