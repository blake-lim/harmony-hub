import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/constans/styles.dart';
import 'package:harmony_hub/viewmodels/universal_view_model.dart';
import 'package:harmony_hub/widgets/global_app_bar.dart';
import 'package:harmony_hub/services/resource_manager.dart';
import 'package:harmony_hub/views/select_instruments/components/instruments_tile.dart';
import 'package:harmony_hub/widgets/global_btn.dart';
import 'package:rive/rive.dart';

//------------------------------------------------------------------------------
// 악기 선택 스크린
//------------------------------------------------------------------------------
class InstrumentSelectionScreen extends StatelessWidget {
  final String songTitle;

  const InstrumentSelectionScreen({Key? key, required this.songTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = Get.find<UniversalViewModel>();

    return Scaffold(
      appBar: const GlobalAppBar(),
      body: Column(
        children: [
          _guideTextWidget(),
          _instrumentsListWidget(),
          _riveAnimationWidget(),
          Obx(
            () => GlobalConfirmButton(
              buttonText:
                  viewModel.isButtonEnabled.value ? '선택 완료' : '악기를 선택해주세요',
              isEnabled: viewModel.isButtonEnabled.value,
              onPressed: viewModel.navigateToPlayScreen,
            ),
          ),
        ],
      ),
    );
  }
}

/* 악기 선택 가이드 텍스트 위젯 */
Widget _guideTextWidget() {
  return const Padding(
    padding: EdgeInsets.symmetric(vertical: 20.0),
    child: Text(
      '악기를 선택하세요',
      style: TextStyle(
        color: value201,
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

/* 악기 선택 목록 위젯 */
Widget _instrumentsListWidget() {
  return Expanded(
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
  );
}

/* 하단 웨이브 애니메이션 위젯 */
Widget _riveAnimationWidget() {
  return const SizedBox(
    height: 100,
    child: RiveAnimation.asset(
      'assets/rive_assets/soundwave.riv',
      fit: BoxFit.contain,
    ),
  );
}
