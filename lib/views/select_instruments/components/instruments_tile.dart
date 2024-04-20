import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';

//------------------------------------------------------------------------------
// 악기 개별 아이템 위젯
//------------------------------------------------------------------------------
class InstrumentTile extends StatelessWidget {
  final String name;
  final String imagePath;

  const InstrumentTile({
    Key? key,
    required this.name,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        title: Center(
          child: Text(
            name,
            style: const TextStyle(
              color: gray000,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(width: 1.0, color: dim900),
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
