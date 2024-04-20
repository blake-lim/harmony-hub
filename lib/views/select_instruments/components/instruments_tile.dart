import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/viewmodels/universal_view_model.dart';

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
    final viewModel = Get.find<UniversalViewModel>();

    return Obx(() => GestureDetector(
          onTap: () => viewModel.selectInstrument(name),
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black45,
              title: Center(
                child: Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: viewModel.selectedInstrument.value == name
                      ? Container(
                          color: Colors.black.withOpacity(0.8),
                          alignment: Alignment.center,
                          child: const Icon(Icons.check,
                              color: Colors.white, size: 48),
                        )
                      : Container(),
                ),
              ],
            ),
          ),
        ));
  }
}
