class Quiz {
  final String question;
  final List<String> answers;
  final String correctAnswer;

  Quiz({
    required this.question,
    required this.answers,
    required this.correctAnswer,
  });

  static List<Quiz> quizzes = [
    Quiz(
      question: 'Which platform is primarily used for Android app development?',
      answers: ['Flutter', 'React Native', 'Kotlin', 'Swift'],
      correctAnswer: 'Kotlin',
    ),
    Quiz(
      question: 'Which framework allows cross-platform app development?',
      answers: ['Android Studio', 'Xcode', 'Flutter', 'Java'],
      correctAnswer: 'Flutter',
    ),
    Quiz(
      question: 'What language is used for iOS app development?',
      answers: ['Kotlin', 'Swift', 'Dart', 'JavaScript'],
      correctAnswer: 'Swift',
    ),
    Quiz(
      question: 'Which type of app runs in a browser?',
      answers: ['Native App', 'Hybrid App', 'Web App', 'Flutter App'],
      correctAnswer: 'Web App',
    ),
  ];
}
