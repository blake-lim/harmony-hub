import 'package:flutter/material.dart';
import 'package:harmony_hub/global_widgets/global_app_bar.dart';
import 'package:harmony_hub/views/home/components/genre_list.dart';
import 'package:lottie/lottie.dart';

//------------------------------------------------------------------------------
// 홈스크린
//------------------------------------------------------------------------------
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> firstLineGenres = [
      {'name': 'Rock', 'image': 'assets/images/rock.jpg'},
      {'name': 'Hip-Hop', 'image': 'assets/images/hiphop.jpg'},
      {'name': 'Pop', 'image': 'assets/images/pop.jpg'},
      {'name': 'Electronic', 'image': 'assets/images/electronic.jpg'},
    ];
    final List<Map<String, String>> secondLineGenres = [
      {'name': 'Folk', 'image': 'assets/images/folk.jpg'},
      {'name': 'Blues', 'image': 'assets/images/blues.jpg'},
      {'name': 'Jazz', 'image': 'assets/images/jazz.jpg'},
      {'name': 'Classical', 'image': 'assets/images/classical.jpg'},
    ];

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
                genres: firstLineGenres,
              ),
              GenreListSection(
                title: 'Into the Relaxation',
                genres: secondLineGenres,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//------------------------------------------------------------------------------
// 상단 바운스 애니메이션 위젯
//------------------------------------------------------------------------------
Widget _homeTopBounceWidget() {
  return Center(
    child: Lottie.asset(
      width: 300,
      height: 100,
      'assets/lotties/home_bounce.json',
    ),
  );
}
