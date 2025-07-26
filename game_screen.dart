import 'package:flutter/material.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final List<Map<String, Object>> quizData = [
    {
      'question': 'What does AI stand for?',
      'options': [
        'Artificial Intelligence',
        'Advanced Interface',
        'Auto Index',
      ],
      'answer': 'Artificial Intelligence',
    },
    {
      'question': 'Which library is used for deep learning?',
      'options': ['NumPy', 'TensorFlow', 'Matplotlib'],
      'answer': 'TensorFlow',
    },
    {
      'question': 'Which language is best for ML?',
      'options': ['Java', 'Python', 'C++'],
      'answer': 'Python',
    },
  ];

  int currentQuestion = 0;
  String? selectedAnswer;
  bool? isCorrect;

  void checkAnswer(String option) {
    final correct = quizData[currentQuestion]['answer'] as String;
    setState(() {
      selectedAnswer = option;
      isCorrect = option == correct;
    });
  }

  void nextQuestion() {
    setState(() {
      currentQuestion = (currentQuestion + 1) % quizData.length;
      selectedAnswer = null;
      isCorrect = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = quizData[currentQuestion];
    final options = question['options'] as List<String>;

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            question['question'] as String,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...options.map((opt) {
            final isSelected = selectedAnswer == opt;
            final color = isSelected
                ? (isCorrect == true
                      ? Colors.green
                      : (isCorrect == false ? Colors.red : null))
                : null;

            return ElevatedButton(
              onPressed: selectedAnswer == null ? () => checkAnswer(opt) : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                minimumSize: const Size.fromHeight(45),
              ),
              child: Text(opt),
            );
          }),
          const SizedBox(height: 20),
          if (selectedAnswer != null)
            ElevatedButton(
              onPressed: nextQuestion,
              child: const Text("Next Question"),
            ),
        ],
      ),
    );
  }
}
