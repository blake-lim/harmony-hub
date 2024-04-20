import 'package:flutter/material.dart';
import 'package:harmony_hub/global_widgets/global_app_bar.dart';

//------------------------------------------------------------------------------
// 악기 선택 스크린
//------------------------------------------------------------------------------
class InstrumentSelectionScreen extends StatelessWidget {
  final String songTitle;

  const InstrumentSelectionScreen({Key? key, required this.songTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBar(),
      body: Center(
        child: Text('악기를 선택하세요: $songTitle'),
      ),
    );
  }
}
