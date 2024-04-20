import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/viewmodels/video_play_view_model.dart';
import 'package:harmony_hub/views/play_instruments/components/video_player_widget.dart';
import 'package:harmony_hub/widgets/global_app_bar.dart';

//------------------------------------------------------------------------------
// 연주 스크린
//------------------------------------------------------------------------------
class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return VideoPlayerWidget(index: index);
        },
      ),
    );
  }
}
