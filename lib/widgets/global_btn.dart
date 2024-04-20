import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';

//------------------------------------------------------------------------------
// 전역에서 사용되는 컨펌 버튼
//------------------------------------------------------------------------------
class GlobalConfirmButton extends StatelessWidget {
  final String buttonText;
  final bool isEnabled;
  final VoidCallback? onPressed;

  const GlobalConfirmButton({
    Key? key,
    required this.buttonText,
    this.isEnabled = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 12.0,
          bottom: 16.0,
        ),
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              color: gray200,
              width: 1.0,
            ),
          ),
        ),
        child: InkWell(
          onTap: onPressed,
          child: Container(
            decoration: BoxDecoration(
              color: isEnabled ? value000 : gray000,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            alignment: Alignment.center,
            child: Text(
              buttonText,
              style: TextStyle(
                color: isEnabled ? gray000 : gray400,
                fontWeight: isEnabled ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
          ),
        ));
  }
}
