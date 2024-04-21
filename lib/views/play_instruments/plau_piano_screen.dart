import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/viewmodels/instruments_play_view_model.dart';
import 'package:harmony_hub/views/play_instruments/components/piano_btn.dart';

//------------------------------------------------------------------------------
// 피아노 연주 스크린
//------------------------------------------------------------------------------
class PianoScreen extends StatelessWidget {
  PianoScreen({Key? key}) : super(key: key);

  final PianoController pianoController = Get.put(PianoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                PianoButton(
                  onKeyPress: () => pianoController.playPianoSound(1),
                ),
                PianoButtonWithSuperKey(
                  onMainKeyPress: () => pianoController.playPianoSound(2),
                  onSuperKeyPress: () => pianoController.playPianoSound(3),
                ),
                PianoButtonWithSuperKey(
                  onMainKeyPress: () => pianoController.playPianoSound(4),
                  onSuperKeyPress: () => pianoController.playPianoSound(5),
                ),
                PianoButtonWithSuperKey(
                  onMainKeyPress: () => pianoController.playPianoSound(6),
                  onSuperKeyPress: () => pianoController.playPianoSound(7),
                ),
                PianoButton(
                  onKeyPress: () => pianoController.playPianoSound(8),
                ),
                PianoButtonWithSuperKey(
                  onMainKeyPress: () => pianoController.playPianoSound(9),
                  onSuperKeyPress: () => pianoController.playPianoSound(10),
                ),
                PianoButtonWithSuperKey(
                  onMainKeyPress: () => pianoController.playPianoSound(11),
                  onSuperKeyPress: () => pianoController.playPianoSound(12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
