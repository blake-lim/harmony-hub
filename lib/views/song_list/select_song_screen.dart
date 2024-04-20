import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/viewmodels/universal_view_model.dart';
import 'package:harmony_hub/views/song_list/components/song_list.dart';

//------------------------------------------------------------------------------
// 음악 선택 스크린
//------------------------------------------------------------------------------
class MusicSelectionScreen extends StatelessWidget {
  final String genre;
  final String imagePath;

  MusicSelectionScreen({
    Key? key,
    required this.genre,
    required this.imagePath,
  }) : super(key: key);

  final UniversalViewModel viewModel = Get.find<UniversalViewModel>();

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> genreSongs = viewModel.getSongsByGenre(genre);

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _selectedGenreWidget(),
            SongListWidget(genreSongs: genreSongs),
          ],
        ),
      ),
    );
  }

//------------------------------------------------------------------------------
// 이전 스크린에서 선택한 장르 노출 위젯
//------------------------------------------------------------------------------
  Widget _selectedGenreWidget() {
    return Column(
      children: [
        const SizedBox(height: 52.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0),
          child: Center(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: gray100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 2.0, color: value201),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.center,
              child: Text(
                genre,
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: gray000,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20.0),
      ],
    );
  }
}
