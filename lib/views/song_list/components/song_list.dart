import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/views/select_instruments/instrument_selection_screen.dart';

//------------------------------------------------------------------------------
// 음악 목록 노출 위젯
//------------------------------------------------------------------------------
class SongListWidget extends StatelessWidget {
  final List<Map<String, String>> genreSongs;

  const SongListWidget({
    Key? key,
    required this.genreSongs,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: genreSongs.length,
        itemBuilder: (context, index) {
          String? songImage = genreSongs[index]['image'];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage:
                  AssetImage(songImage ?? 'assets/images/default.jpg'),
              radius: 25,
            ),
            title: Text(
              genreSongs[index]['title']!,
              style:
                  const TextStyle(color: gray000, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              genreSongs[index]['artist']!,
              style: const TextStyle(color: gray000),
            ),
            onTap: () {
              Get.to(() => InstrumentSelectionScreen(
                    songTitle: genreSongs[index]['title']!,
                  ));
            },
          );
        },
      ),
    );
  }
}
