import 'package:audioplayers/audio_cache.dart';
import 'package:get/get.dart';

class PianoController extends GetxController {
  late AudioCache audioCache;

  PianoController() {
    audioCache = AudioCache(prefix: 'assets/audio/piano/');
  }

  @override
  void onInit() {
    super.onInit();
    _loadSounds();
  }

  void _loadSounds() {
    for (var i = 1; i <= 13; i++) {
      String fileName = 'FX_piano${i.toString().padLeft(2, '0')}.mp3';
      audioCache.load(fileName);
    }
  }

/* 피아노 음성 재생 메서드 */
  Future<void> playPianoSound(int noteNumber) async {
    String noteFileName = noteNumber < 10
        ? 'FX_piano0$noteNumber.mp3'
        : 'FX_piano$noteNumber.mp3';
    await audioCache.play(noteFileName);
  }

  @override
  void onClose() {
    audioCache.clearCache();
    super.onClose();
  }
}
