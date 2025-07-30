import 'package:flutter/material.dart';
import 'package:test_app/score_screen.dart';

import 'quiz.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Test App', home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentQuestion = 0;
  bool isAnswer = false;
  String answer = '';
  int score = 0;

  void click(String a) {
    isAnswer = true;
    answer = a;
    setState(() {});
  }

  void submit() {
    if (Quiz.quizzes[currentQuestion].correctAnswer == answer) {
      score++;
    }
    if (currentQuestion < Quiz.quizzes.length - 1) {
      currentQuestion++;
      isAnswer = false;
      answer = '';
      setState(() {});
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ScoreScreen(score)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App'), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              'Question ${currentQuestion + 1}/${Quiz.quizzes.length}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10),
            Text(
              Quiz.quizzes[currentQuestion].question,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                item(Quiz.quizzes[currentQuestion].answers[0]),
                SizedBox(width: 20),
                item(Quiz.quizzes[currentQuestion].answers[1]),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                item(Quiz.quizzes[currentQuestion].answers[2]),
                SizedBox(width: 20),
                item(Quiz.quizzes[currentQuestion].answers[3]),
              ],
            ),
            SizedBox(height: 20),
            if (isAnswer)
              TextButton(
                onPressed: () {
                  submit();
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget item(String answer) {
    return Expanded(
      child: InkWell(
        onTap: () {
          click(answer);
        },
        child: Container(
          height: 100,
          color: Colors.blue,
          child: Center(
            child: Text(
              answer,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
