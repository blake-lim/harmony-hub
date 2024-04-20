import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/views/song_list/select_song_screen.dart';

//------------------------------------------------------------------------------
// 장르 리스트 아이템 위젯
//------------------------------------------------------------------------------
class GenreTile extends StatelessWidget {
  final String genre;
  final String imagePath;

  const GenreTile({
    super.key,
    required this.genre,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Get.to(
              () => MusicSelectionScreen(genre: genre, imagePath: imagePath));
        },
        child: Container(
          width: 160,
          height: 160,
          decoration: BoxDecoration(
            color: gray100,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            genre,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: gray000,
            ),
          ),
        ),
      ),
    );
  }
}
