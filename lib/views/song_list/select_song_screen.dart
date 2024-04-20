import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/viewmodels/universal_view_model.dart';

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
            Expanded(
              child: ListView.builder(
                itemCount: genreSongs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          AssetImage(genreSongs[index]['image']!), // 사용 이미지
                      radius: 25, // 이미지 크기
                    ),
                    title: Text(
                      genreSongs[index]['title']!,
                      style: const TextStyle(
                          color: gray000, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      genreSongs[index]['artist']!,
                      style: const TextStyle(color: gray000),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

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
