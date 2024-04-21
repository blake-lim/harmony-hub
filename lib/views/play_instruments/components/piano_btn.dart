import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';

//------------------------------------------------------------------------------
// 피아노 버튼 위젯
//------------------------------------------------------------------------------
class PianoButton extends StatelessWidget {
  final VoidCallback onKeyPress;
  const PianoButton({super.key, required this.onKeyPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 8.0,
          bottom: 2.0,
          top: 2.0,
        ),
        child: SizedBox(
          width: 250,
          height: 100,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: gray000,
            ),
            onPressed: onKeyPress,
            child: const SizedBox(),
          ),
        ),
      ),
    );
  }
}

class PianoButtonWithSuperKey extends StatelessWidget {
  final VoidCallback onMainKeyPress;
  final VoidCallback onSuperKeyPress;

  const PianoButtonWithSuperKey(
      {super.key, required this.onMainKeyPress, required this.onSuperKeyPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              bottom: 2.0,
              top: 2.0,
            ),
            child: Container(
              color: gray000,
              width: 250,
              height: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: gray000),
                onPressed: onMainKeyPress,
                child: const SizedBox(),
              ),
            ),
          ),
          Positioned(
            // top: -25.0,
            left: -30.0,
            child: Container(
              color: gray999,
              width: 50.0,
              height: 150.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: gray999),
                onPressed: onSuperKeyPress,
                child: const SizedBox(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
