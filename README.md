# Harmony Hub

하루짜리 프로젝트로 다수의 영상재생과 악기 구현을 목적으로 제작</br>
현재 피아노만 구현

<img src="https://github.com/blake-lim/harmony-hub/assets/86904667/359620b5-c696-416d-9a7c-e57a120f9111" width="300" height="700">
<img src="https://github.com/blake-lim/harmony-hub/assets/86904667/f14e1633-5152-4951-8116-8f18118a7858" width="300" height="500">
<img src="https://github.com/blake-lim/harmony-hub/assets/86904667/1c488def-716c-4fbb-aae8-33b72ea3681a" width="300" height="500">
<img src="https://github.com/blake-lim/harmony-hub/assets/86904667/12753280-b865-4705-a309-1c8c78f0290a" width="300" height="500">
<img src="https://github.com/blake-lim/harmony-hub/assets/86904667/1f6c68d0-04ad-4a22-92ed-481523a9106d" width="300" height="500">
<img src="https://github.com/blake-lim/harmony-hub/assets/86904667/afb0089d-ba53-4405-8fdb-affb05da482a" width="300" height="500">


## 사용 기술 및 프레임워크
1. Flutter 3.13.9

2. Rive (애니메이션)
3. GetX (상태 관리 및 라우팅)
4. Video Player (영상 재생)
5. Audiuo Player (음성 재생)

## 설계
**커밋 메시지 컨벤션** :Pandas 팀의 커밋 메시지 컨벤션 전략을 적용.
```bash
ENH: (Enhancement) 개선하거나 신기능 추가
BUG: 버그 수정
DOC: (Documentation) 문서화 관련된 작업
CLN: (Cleanup) 코드를 정리하거나 리팩토링한 작업
```
**MVVM 패턴 아키텍쳐** :  UI와 로직을 분리해 코드 관리를 용이하게 하고, </br>
데이터 바인딩을 통해 자동적인 UI 업데이트를 가능하게 함으로써 개발 효율성을 높이기 위해서 선정.</br>
**GetX를 활용한 의존성 주입 및 상태 관리** : 사전과제 특성 상, 빠른 개발이 필요하다고 판단했고,</br>
상태 관리, 라우팅, 의존성 관리를 한 곳에서 개발이 가능한 GetX를 선택.</br>
**프로젝트 설계** : 기능 및 스크린 구현 전, 아래 사항을 구현하고 프로젝트를 진행.</br>
- 디자인 시스템 추가
- Appbar 및 BottomNavigator 등 공통 위젯 추가



## 디렉토리 구조 :
```bash
📦lib
 ┣ 📂constans
 ┃ ┗ 📜styles.dart
 ┣ 📂models
 ┣ 📂routes
 ┣ 📂services
 ┃ ┗ 📜resource_manager.dart
 ┣ 📂viewmodels
 ┃ ┣ 📜instruments_play_view_model.dart
 ┃ ┣ 📜universal_view_model.dart
 ┃ ┗ 📜video_play_view_model.dart
 ┣ 📂views
 ┃ ┣ 📂home
 ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┣ 📜genre_list.dart
 ┃ ┃ ┃ ┗ 📜genre_tile.dart
 ┃ ┃ ┣ 📜home_screen.dart
 ┃ ┃ ┗ 📜onboarding_screen.dart
 ┃ ┣ 📂play_instruments
 ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┣ 📜piano_btn.dart
 ┃ ┃ ┃ ┗ 📜video_player_widget.dart
 ┃ ┃ ┣ 📜plau_piano_screen.dart
 ┃ ┃ ┗ 📜play_screen.dart
 ┃ ┣ 📂select_instruments
 ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┗ 📜instruments_tile.dart
 ┃ ┃ ┗ 📜instrument_selection_screen.dart
 ┃ ┣ 📂song_list
 ┃ ┃ ┣ 📂components
 ┃ ┃ ┃ ┗ 📜song_list.dart
 ┃ ┃ ┗ 📜select_song_screen.dart
 ┃ ┗ 📂splash
 ┃ ┃ ┗ 📜splash_screen.dart
 ┣ 📂widgets
 ┃ ┣ 📜animated_btn.dart
 ┃ ┣ 📜global_app_bar.dart
 ┃ ┣ 📜global_btn.dart
 ┃ ┗ 📜rive_wave_widget.dart
 ┗ 📜main.dart
```
## 테스트 환경
1. Flutter SDK : 3.13.9
2. Xcode : Version 15.3 (15E204a)
3. iOS Simulator : Version 15.3 (1019.2)
4. CocoaPods : 1.15.2
5. Gem : 3.0.3.1
## 실행 방법
Flutter 환경 설정</br>
Flutter 2.x 설치 및 환경 구성</br>
프로젝트 클론</br>
`git clone (https://github.com/blake-lim/harmony-hub.git)`</br>
의존성 설치</br>
`flutter pub get`</br>
프로젝트 실행</br>
`flutter run`

## 가능한 개선 사항
하루 프로젝트로 시간 관계 상, 여러 수정사항이 필요</br>
1. 기타 및 드럼, 보컬 기능 추가
2. url 타입 음성 및 영상 재생

