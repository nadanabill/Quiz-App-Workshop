import 'package:flutter/material.dart';

class ScoreScreen extends StatelessWidget {
  final int score;
  const ScoreScreen(this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.network(
                  'https://cdn-icons-png.flaticon.com/256/6225/6225308.png',
                ),
                SizedBox(
                  height: 20,
                ),
                Text('Score: $score')
              ],
            ),
          ),
        ));
  }
}
