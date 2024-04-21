import 'package:flutter/material.dart';
import 'package:harmony_hub/views/play_instruments/components/video_player_widget.dart';
import 'package:harmony_hub/views/play_instruments/plau_piano_screen.dart';
import 'package:harmony_hub/widgets/global_app_bar.dart';
import 'package:harmony_hub/widgets/rive_wave_widget.dart';

//------------------------------------------------------------------------------
// 연주 스크린
//------------------------------------------------------------------------------
class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(),
      body: Column(
        children: [
          /* 비디오 위젯 */
          Expanded(
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
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
          ),
          const SizedBox(height: 50.0, child: RiveWaveWidget()),
          /* 악기 위젯 */
          Expanded(child: PianoScreen()),
        ],
      ),
    );
  }
}
