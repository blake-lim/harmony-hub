import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/views/home/components/genre_unit.dart';

//------------------------------------------------------------------------------
// 장르 리스트 위젯
//------------------------------------------------------------------------------
class GenreListSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> genres;

  const GenreListSection({
    Key? key,
    required this.title,
    required this.genres,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for (var genre in genres) {
      precacheImage(AssetImage(genre['image']!), context);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 40),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            color: gray000,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8.0),
        SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: genres.length,
            itemBuilder: (context, index) {
              return GenreTile(
                genre: genres[index]['name']!,
                imagePath: genres[index]['image']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
