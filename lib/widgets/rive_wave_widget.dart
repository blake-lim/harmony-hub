import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

//------------------------------------------------------------------------------
// 웨이브 애니메이션 위젯
//------------------------------------------------------------------------------
class RiveWaveWidget extends StatelessWidget {
  const RiveWaveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: RiveAnimation.asset(
        'assets/rive_assets/soundwave.riv',
        fit: BoxFit.contain,
      ),
    );
  }
}
