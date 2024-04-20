// MusicSelectionScreen.dart
import 'package:flutter/material.dart';

class MusicSelectionScreen extends StatelessWidget {
  final String genre;

  const MusicSelectionScreen({Key? key, required this.genre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Select music from the genre: $genre'),
      ),
    );
  }
}
