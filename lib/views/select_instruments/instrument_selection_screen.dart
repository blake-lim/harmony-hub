import 'package:flutter/material.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/global_widgets/global_app_bar.dart';
import 'package:harmony_hub/services/resource_manager.dart';
import 'package:harmony_hub/views/select_instruments/components/instruments_tile.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                '악기를 선택하세요!',
                style: TextStyle(
                  color: value201,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: ResourceManager.instruments.length,
                itemBuilder: (context, index) {
                  return InstrumentTile(
                    name: ResourceManager.instruments[index]['name']!,
                    imagePath: ResourceManager.instruments[index]['image']!,
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
