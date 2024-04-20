import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/services/resource_manager.dart';
import 'package:harmony_hub/viewmodels/video_play_view_model.dart';
import 'package:harmony_hub/views/play_instruments/components/video_player_widget.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VideoPlayerControllerX());

    return Scaffold(
      appBar: AppBar(title: const Text('Multi Video Player')),
      body: Column(
        children: List.generate(
          ResourceManager.videos.length,
          (index) => Expanded(
            child: VideoPlayerWidget(index: index),
          ),
        ),
      ),
    );
  }
}
