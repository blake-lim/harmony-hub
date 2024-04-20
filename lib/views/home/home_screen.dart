import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:harmony_hub/global_widgets/global_app_bar.dart';
import 'package:harmony_hub/viewmodels/universal_view_model.dart';
import 'package:harmony_hub/views/home/components/genre_list.dart';
import 'package:lottie/lottie.dart';

//------------------------------------------------------------------------------
// 홈스크린
//------------------------------------------------------------------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final UniversalViewModel viewModel = Get.put(UniversalViewModel());

    return Scaffold(
      appBar: const GlobalAppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* 상단 바운스 위젯 */
              _homeTopBounceWidget(),
              /* 장르 리스트 위젯 */
              GenreListSection(
                title: 'Into the Intense World',
                genres: viewModel.firstLineGenres,
              ),
              GenreListSection(
                title: 'Into the Relaxation',
                genres: viewModel.secondLineGenres,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _homeTopBounceWidget() {
  return Center(
    child: Lottie.asset(
      'assets/lotties/home_bounce.json',
      width: 300,
      height: 100,
    ),
  );
}
