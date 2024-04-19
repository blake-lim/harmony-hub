import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> genres = [
      'Rock',
      'Pop',
      'Jazz',
      'Classical',
      'Hip-Hop',
      'Electronic',
      'Folk',
      'Blues'
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
                width: 150,
                height: 150,
                child: Lottie.asset('assets/lotties/home.json')),
            const SizedBox(height: 50),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  return GenreTile(genre: genres[index]);
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: genres.length,
                itemBuilder: (context, index) {
                  return GenreTile(genre: genres[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GenreTile extends StatelessWidget {
  final String genre;

  const GenreTile({super.key, required this.genre});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Selected Genre: $genre');
      },
      child: Container(
        width: 160,
        height: 160,
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            genre,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
